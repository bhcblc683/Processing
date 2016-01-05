# coding=utf8
__author__ = 'kosei'
from os import linesep
from types import DictType
# TODO: 重要事情说三遍

# TODO: 数据录入格式：实例名称（例如：加工功能）＝字段1,（逗号为英文）字段2,......( 如字段中有多项用‘、’（中文顿号分隔）),同一加工资源与其它的之间以一个或者多个空行分隔
# TODO: 数据录入格式：实例名称（例如：加工功能）＝字段1,（逗号为英文）字段2,......( 如字段中有多项用‘、’（中文顿号分隔）),同一加工资源与其它的之间以一个或者多个空行分隔
# TODO: 数据录入格式：实例名称（例如：加工功能）＝字段1,（逗号为英文）字段2,......( 如字段中有多项用‘、’（中文顿号分隔）),同一加工资源与其它的之间以一个或者多个空行分隔


data_file_path = '/Users/kosei/Desktop/车削铣削.txt'

instruction_file_path = ''

first_level_data_separator = '='

second_level_data_separator = ','

instruction_model_separator = '，'

instruction_model_dict = {
    "加工功能": "功能名称，加工精度，功能描述",
    "加工对象": "零件类型，零件材料，毛坯尺寸",
    "加工资源": "机床，刀具，人力"
}

# TODO "模型名称": 0 -- 无instruction_line -- 有instruction_line
model_dict = {
    "加工功能=": 0,
    "加工对象=": 0,
    "机床=": 1,
    "刀具=": 1,
}

translation_dict = {
    "": "",
    "": "",
}


def print_em_dict(_dict, level=0):
    for k, v in _dict.items():
        print ' ' * 4 * level, k,
        if isinstance(v, DictType):
            print linesep
            print_em_dict(v, level + 1)
        else:
            print ' ', v


# TODO: GetDataFromSingLeTxtLine与GetDataFromCoupleTxtLine返回的结果字典（data_dict）结构一样，只不过二级键来源不一致。
# TODO: GetDataFromSingLeTxtLine来源于数据模型定义文件，GetDataFromCoupleTxtLine来源于数据模型说明行（instruction_line）。

class GetDataFromTxtLine(object):
    def __init__(self, data_line,
                 _first_level_data_separator=first_level_data_separator,
                 _second_level_data_separator=second_level_data_separator):
        self._data_dict = {}
        self._data_line = data_line
        self._first_level_key = None
        self._first_level_separator = _first_level_data_separator
        self._second_level_separator = _second_level_data_separator

    def get_data(self):
        # TODO: 生成字典里的value，并且返回字典
        pass

    def rm_linesep(self):
        if self._data_line[-1] == linesep:
            self._data_line = self._data_line[:-1]
        if hasattr(self, '_instruction_line'):
            if self._instruction_line[-1] == linesep:
                self._instruction_line = self._instruction_line[:-1]


class GetDataFromCoupleTxtLine(GetDataFromTxtLine):
    """"""

    def __init__(self, instruction_line=None, data_line=None):
        self._instruction_line = instruction_line
        super(GetDataFromCoupleTxtLine, self).__init__(data_line)

    def get_data(self, instruction_line=None, data_line=None):
        if instruction_line and data_line:
            self._instruction_line = instruction_line
            self._data_line = data_line
        self.rm_linesep()
        first_level_key, first_level_data = \
            self._instruction_line.split(self._first_level_separator)
        self._data_dict = \
            dict(
                zip(first_level_data.split(self._second_level_separator),
                    self._data_line.split(self._first_level_separator)[1].split(self._second_level_separator))
            )
        return self._data_dict


class GetDataFromSingleTxtLine(GetDataFromTxtLine):
    def __init__(self, data_line=None,
                 _instruction_model_dict=instruction_model_dict,
                 _instruction_model_separator=instruction_model_separator):
        self._instruction_model_dict = _instruction_model_dict
        self._instruction_model_separator = _instruction_model_separator
        super(GetDataFromSingleTxtLine, self).__init__(data_line)

    def get_data(self, data_line=None):
        if data_line:
            self._data_line = data_line
        self.rm_linesep()
        first_level_key, first_level_data = \
            self._data_line.split(self._first_level_separator)
        self._data_dict = dict(
            zip(
                self._instruction_model_dict[first_level_key].split(self._instruction_model_separator),
                first_level_data.split(self._second_level_separator))
        )
        return self._data_dict


# TODO GetDataFromTxt::_data_dict: {"加工功能": {
# TODO                                            serial_num: {加工功能1}
# TODO                                            ...
# TODO                                        }
# TODO                              ...
# TODO                              }

class GetDataFromTxt(object):
    def __init__(self, _model_dict=model_dict
                 , _data_file_path=data_file_path):
        self._model_dict = _model_dict
        self._data_file = open(_data_file_path, 'r')
        self._data_dict = self.init_data_dict()
        self._data_file_size = self.get_file_size()
        self._cl = GetDataFromCoupleTxtLine(data_line=None, instruction_line=None)
        self._sl = GetDataFromSingleTxtLine(data_line=None)

    def init_data_dict(self):
        data_dict = {}
        for each_key in self._model_dict.keys():
            data_dict[each_key[:-1]] = {}
        return data_dict

    def get_file_size(self):
        c = self._data_file.tell()
        self._data_file.seek(0, 2)
        s = self._data_file.tell()
        self._data_file.seek(0, c)
        return s

    def get_data(self):
        serial_num = 0
        models = self._model_dict.keys()
        match_flag = 0
        while 1:
            a_line = self._data_file.readline()
            # TODO: 检查是否到文件尾
            if self._data_file.tell() == self._data_file_size:
                break
            if a_line == linesep:
                serial_num += 1
                continue
            for each_model in models:
                if a_line.find(each_model) != -1:
                    match_flag = 1
                    match_model = each_model
                    break
            if not match_flag:
                continue
            # TODO: 判断有无instruction_line
            if self._model_dict[match_model]:
                self._data_dict[match_model[:-1]][serial_num] = self._cl.get_data(a_line, self._data_file.readline())
            else:
                self._data_dict[match_model[:-1]][serial_num] = self._sl.get_data(a_line)
            match_flag = 0
        return self._data_dict


processing_function_insert_sql_template = """INSERT INTO processing_function.processing_function SET
processing_function_name="%s",
processing_function_description="%s",
processing_precision_finishing="%d",
processing_precision_semi="%d",
processing_precision_rough="%d";
"""


class SqlGenerator(object):
    def __init__(self, _data_dict):
        self._data_dict = _data_dict
        self._processing_function_insert_sql_template = """INSERT INTO processing_function.processing_function SET
processing_function_name="%s",
processing_function_description="%s",
processing_precision_finishing=%d,
processing_precision_semi=%d,
processing_precision_rough=%d;
"""

    def generate_processing_function_insert_sql(self):
        # TODO: 函数与成员之间耦合度有点高，继承重写去
        for processing_function in self._data_dict['加工功能'].values():
            precision = processing_function['加工精度']
            print self._processing_function_insert_sql_template % (
                            processing_function['功能名称'], processing_function['功能描述'],
                            int(precision.find("精加工") >= 0), int(precision.find("半精加工") >= 0),
                            int(precision.find("粗加工") >= 0)
            )


if __name__ == '__main__':
    # cl = GetDataFromCoupleTxtLine('机床=机床名称,机床编号,加工范围,加工精度,表面粗糙度,主轴转速范围,主电机功率',
    #                               '机床=普通车床,CH6132,320×750,圆度0.01圆柱度0.03/300平面度0.02/300,Ra1.6,35-1800r/min,4kw')
    #
    # sl = GetDataFromSingleTxtLine('加工功能=铣较大平面,粗加工、半精加工、精加工,略')
    # print_em_dict(cl.get_data())
    g = GetDataFromTxt()
    data_dict = g.get_data()
    print '*' * 20
    print_em_dict(data_dict)
    print '*' * 20
    s = SqlGenerator(data_dict)
    s.generate_processing_function_insert_sql()