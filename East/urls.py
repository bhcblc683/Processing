from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = [
    # Examples:
    # url(r'^$', 'East.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'login', include('login.urls')),
    url(r'query', include('resource_query.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'', include('login.urls')),
]
