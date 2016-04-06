# coding=utf8
from django.shortcuts import render
from django.http import JsonResponse
from types import ListType
from json import loads, dumps
from dbOperator import dbOperator
from East.settings import machine_tool_param, cutter_param


# Create your views here.

def inSet(l):
    res = r'('
    last = len(l) - 1
    for e in l:
        res += "'%(value)s'%(sep)s" % {
            'value': unicode(e),
            'sep': ',' if l.index(e) != last else ')',
        }
    return res


def gen_where_clause(con_list):
    try:
        if len(con_list) == 0:
            raise ValueError, "con_list is empty !!!"
    except ValueError, e:
        return ';'

    where_clause = r" WHERE"
    condition = r" %(field)s = '%(value)s'%(sep)s"
    set_condition = r" %(field)s IN %(set)s%(sep)s"
    end = len(con_list) - 1
    for e in con_list:
        where_clause += condition % {
            'field': e[0],
            'value': unicode(e[1]),
            'sep': ' AND' if con_list.index(e) != end else ';'
        } if not isinstance(e[1], ListType) else set_condition % {
            'field': e[0],
            'set': inSet(e[1]),
            'sep': ' AND' if con_list.index(e) != end else ';'
        }
    return where_clause


def select_fields(param_dict):
    items = param_dict.items()
    res_s = items[0][0]
    res_l = [items[0][1]]
    for e in items[1:]:
        res_s += ','
        res_s += e[0]
        res_l.append(e[1])
    return res_s, res_l


def machine_tool_query(request):
    query_dict = loads(request.POST['query_dict'])
    db = dbOperator(db='processing_resource')
    fields = select_fields(machine_tool_param)
    select_clause = r'SELECT %(fields)s FROM machine_tool' % \
                    {'fields': fields[0]}
    where_clause = gen_where_clause(
        [(k, query_dict[v])
         for k, v in machine_tool_param.items()
         if v in query_dict]
    )
    sql = select_clause + where_clause
    res = db.execute(sql)
    return JsonResponse({
        'responseArray': dumps(res),
        'responseFields': dumps(fields[1]),
    })


def cutter_query(request):
    query_dict = loads(request.POST['query_dict'])
    db = dbOperator(db='processing_resource')
    fields = select_fields(cutter_param)
    select_clause = r'SELECT %(fields)s FROM cutter' % \
                    {'fields': select_fields(cutter_param)[0]}
    where_clause = gen_where_clause(
        [(k, query_dict[v])
         for k, v in cutter_param.items()
         if v in query_dict]
    )
    sql = select_clause + where_clause
    res = db.execute(sql)
    return JsonResponse({
        'responseArray': dumps(res),
        'responseFields': dumps(fields[1]),
    })
