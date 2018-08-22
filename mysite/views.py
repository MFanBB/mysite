import datetime
from django.shortcuts import render, redirect
from django.contrib.contenttypes.models import ContentType
from django.utils import timezone
from django.db.models import Sum
from django.core.cache import cache
from django.urls import reverse
from read_statistics.utils import get_seven_days_read_data, get_today_hot_data, get_yesterday_hot_data
from blog.models import Blog
from blog.views import get_blog_list_common_data
import time
from django.shortcuts import Http404  # 导入404异常类
from django.views.decorators.csrf import csrf_exempt  # 导入禁用跨域攻击检查的装饰器


@csrf_exempt  # 装饰上传图片的视图函数
def image_upload(request):  # 定义上传图片的视图函数
    if request.method == 'POST':
        callback = request.GET.get('CKEditorFuncNum')  # 获取客户端上传事件的标记
        try:
            path = "media/upload/" + time.strftime("%Y%m%d%H%M%S", time.localtime())
            f = request.FILES["upload"]  # 获取上传文件的对象
            file_name = path + "_" + f.name  # 组织文件存储路径与名称
            with open(file_name, "wb+") as file:  # 创建文件
                for chunk in f.chunks():  # 读取上传文件
                    file.write(chunk)  # 写入文件
        except Exception as e:
            print(e)
        res = "<script>window.parent.CKEDITOR.tools.callFunction(" + callback + ",'/" + file_name + "', '');</script>"
        # 将上传文件的路径通过上传事件的标记写回浏览器客户端
        return HttpResponse(res)  # 返回响应内容
    else:
        raise Http404()  # 抛出异常

def get_7_days_hot_blogs():
    today = timezone.now().date()
    date = today - datetime.timedelta(days=7)
    blogs = Blog.objects \
                .filter(read_details__date__lt=today, read_details__date__gte=date) \
                .values('id', 'title') \
                .annotate(read_num_sum=Sum('read_details__read_num')) \
                .order_by('-read_num_sum')
    return blogs[:7]

def home(request):
    blog_content_type = ContentType.objects.get_for_model(Blog)
    dates, read_nums = get_seven_days_read_data(blog_content_type)

    # 获取7天热门博客的缓存数据
    hot_blogs_for_7_days = cache.get('hot_blogs_for_7_days')
    if hot_blogs_for_7_days is None:
        hot_blogs_for_7_days = get_7_days_hot_blogs()
        cache.set('hot_blogs_for_7_days', hot_blogs_for_7_days, 3600)

    context = {}
    context['dates'] = dates
    context['read_nums'] = read_nums
    context['today_hot_data'] = get_today_hot_data(blog_content_type)
    context['yesterday_hot_data'] = get_yesterday_hot_data(blog_content_type)
    context['hot_blogs_for_7_days'] = hot_blogs_for_7_days
    return render(request, 'home.html', context)