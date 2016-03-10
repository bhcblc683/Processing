__author__ = 'kosei'
from django.conf.urls import url
from views import query

urlpatterns = [
    url(r'', query),
]
