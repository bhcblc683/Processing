__author__ = 'kosei'
from django.conf.urls import url
from views import machine_tool_query, cutter_query

urlpatterns = [
    url(r'machine_tool', machine_tool_query),
    url(r'cutter', cutter_query)
]
