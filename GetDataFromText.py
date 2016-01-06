# coding=utf8
__author__ = 'kosei'
import sys
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
        if data_line:
            self._data_line = data_line.strip()
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
            self._data_line = data_line.strip()
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
            self._data_line = data_line.strip()
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
        self._data_dict = {}
        self._data_file_size = self.get_file_size()
        self._cl = GetDataFromCoupleTxtLine(data_line=None, instruction_line=None)
        self._sl = GetDataFromSingleTxtLine(data_line=None)

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
            if not self._data_dict.has_key(serial_num):
                self._data_dict[serial_num] = {}
            if self._model_dict[match_model]:
                self._data_dict[serial_num][match_model[:-1]] = self._cl.get_data(a_line, self._data_file.readline())
            else:
                self._data_dict[serial_num][match_model[:-1]] = self._sl.get_data(a_line)
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
        self._translation_dict = {
            "主轴转速范围": "main_axle_rotation_speed",
            "表面粗糙度": "surface_roughness",
            "加工范围": "processing_range",
            "主电机功率": "main_electric_machinery_power",
            "机床编号": "machine_tool_serial_number",
            "加工精度": "processing_precision",
            "机床名称": "machine_tool_name",
            "刀具长度": "cutter_length",
            "刃径": "cutter_blade_diameter",
            "刀具直径": "cutter_diameter",
            "刀尖圆弧半径": "cutter_tip_diameter",
            "主偏角": "enter_angle",
            "刃宽": "blade_width",
            "螺距": "screw_pitch",
            "刀柄长度": "hilt_length",
            "刀具材料": "cutter_material",
            "最大切槽深度": "max_groove_depth",
            "刀具名称": "cutter_name",
            "螺纹种类": "screw_type",
            "刀片形状": "blade_shape",
            "刀具型号": "cutter_model",
            "刃数": "blade_sum",
            "切削刃长度": "cutting_edge_length",
        }
        self._processing_function_insert_sql_template = """INSERT INTO processing_function.processing_function SET
processing_function.processing_function_name="%s",
processing_function.processing_function_description="%s",
processing_function.processing_precision_finishing=%d,
processing_function.processing_precision_semi=%d,
processing_function.processing_precision_rough=%d;
"""
        self._processing_function_id_select_sql_template = """(SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="%s" AND
processing_precision_finishing=%d AND
processing_precision_semi=%d AND
processing_precision_rough=%d)
"""
        self._machine_tool_insert_sql_template = """INSERT INTO processing_resource.machine_tool SET
"""
        self._cutter_insert_sql_template = """INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = %d,
processing_cast_iron = %d,
processing_titanium_alloy = %d,
processing_carbon_steel = %d,
processing_mild_steel = %d,
processing_steel = %d,
processing_nonferrous_metal = %d,
processing_stainless_steel = %d,
processing_gray_cast_iron = %d,
processing_alloy_steel = %d,
"""

    def generate_insert_sql(self):
        # TODO: 函数与成员之间耦合度有点高，继承重写
        # TODO: open的参数在某些情况下可能改成a更好
        tmp = sys.stdout
        f_pf = open('./processing_function_insert_sql.sql', 'a')
        f_mt = open('./machine_tool_insert_sql.sql', 'a')
        f_c = open('./cutter_insert_sql.sql', 'a')
        # TODO: 在执行机床和刀具的插入语句之前必须先执行加工功能的插入语句
        # TODO: 这里同样存在在顺序问题，因为生成刀具和机床插入语句的时候需要加工功能语句中的数据
        for searial_num, instance_data in self._data_dict.items():
            name = instance_data['加工功能']['功能名称']
            finishing = int(instance_data['加工功能']['加工精度'].find("精加工") >= 0)
            semi = int(instance_data['加工功能']['加工精度'].find("半精加工") >= 0)
            rough = int(instance_data['加工功能']['加工精度'].find("粗加工") >= 0)
            sys.stdout = f_pf
            print self._processing_function_insert_sql_template % (
                name,
                instance_data['加工功能']['功能描述'],
                finishing,
                semi,
                rough
            )
            processing_function_id_select_clause = \
                self._processing_function_id_select_sql_template % (
                                                                     name, finishing, semi, rough
                                                                   )
            machine_tool_insert_sql = self._machine_tool_insert_sql_template
            for k, v in instance_data['机床'].items():
                machine_tool_insert_sql += ("""%s = "%s",""" + linesep) % (self._translation_dict[k], v.strip())
            machine_tool_insert_sql += "processing_function_id = %s;" % processing_function_id_select_clause
            sys.stdout = f_mt
            print machine_tool_insert_sql
            cutter_insert_sql = self._cutter_insert_sql_template % (
                int(instance_data['加工对象']['零件材料'].find('耐热合金') >= 0),
                int(instance_data['加工对象']['零件材料'].find('铸铁') >= 0),
                int(instance_data['加工对象']['零件材料'].find('钛合金') >= 0),
                int(instance_data['加工对象']['零件材料'].find('碳钢') >= 0),
                int(instance_data['加工对象']['零件材料'].find('软钢') >= 0),
                int(instance_data['加工对象']['零件材料'].find('钢') >= 0),
                int(instance_data['加工对象']['零件材料'].find('有色金属') >= 0),
                int(instance_data['加工对象']['零件材料'].find('不锈钢') >= 0),
                int(instance_data['加工对象']['零件材料'].find('灰铸铁') >= 0),
                int(instance_data['加工对象']['零件材料'].find('合金钢') >= 0),
            )
            for k, v in instance_data['刀具'].items():
                # TODO: Why ???
                if k == '':
                    continue
                cutter_insert_sql += ("""%s = "%s",""" + linesep) % (self._translation_dict[k], v.strip())
            cutter_insert_sql += "processing_function_id = %s;" % processing_function_id_select_clause
            sys.stdout = f_c;
            print cutter_insert_sql
        sys.stdout = tmp
        f_pf.close()
        f_mt.close()
        f_c.close()


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
