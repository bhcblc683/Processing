# 说明

## 建库说明

三个组合模型**加工功能**，**加工资源**，**加工对象**在MySQL中分别由一个数据库对应。

### processing_function库

#### 建库语句

            CREATE DATABASE processing_function;

#### 库结构说明

描述**加工功能**。库中只有**processing_function**，该表中每一行都代表一个加工功能实例。

### processing_resource库

#### 建库语句

            CREATE DATABASE processing_resource;

#### 库结构说明

描述**加工资源**。 库中**machine_tool**与**cutter**两张表。**machine_tool**表中每一行都代表一个机床实例；
**cutter**表中每一行都代表一个刀具实例。

### processing_object库

#### 库结构说明

并没有建立该库，因为在实际生活中可以有很多的加工对象。在给出加工对象后可以使用**加工对象＝零件类型,零件材料,毛坯尺寸**来选择具体的加工资源。**零件类型**
对**机床**和**刀具**的选择都有限制而**零件材料**限制**刀具**的选择，**毛坯尺寸**限制**机床**的选则。

## 建表说明

布尔值： 0，表示不具有该功能；1，表示具有该功能。

### processing_function.processing_function表

#### 建表语句

            CREATE TABLE processing_function (
                                               `processing_function_name` VARCHAR(100) CHARSET utf8,
                                               `processing_function_description` VARCHAR(100) CHARSET utf8,
                                               `processing_precision_finishing` BOOL DEFAULT 0,
                                               `processing_precision_semi` BOOL DEFAULT 0,
                                               `processing_precision_rough` BOOL DEFAULT 0,
                                               `processing_function_id` INT AUTO_INCREMENT,
                                               PRIMARY KEY (`processing_function_id`),
                                               UNIQUE KEY (`processing_function_name`, `processing_precision_finishing`, `processing_precision_semi`, `processing_precision_rough`)
                                             );


#### 字段说明

表中每一行都代表一个加工功能实例，用一个布尔值来表示该加工能是否具有相应的加工精度。


为了避免数据重复，将**processing_function_name**，**processing_precision_finishing**，**processing_precision_semi**，
**processing_precision_rough**联合起来作为唯一键，来唯一描述一个加工功能（重复的视为相同加工功能）。

* **processing_function_id**自增主键，唯一对应一个加工功能。
* **processing_function_name**表示加工功能名称。
* **processing_function_description**表示加工功能的表述。
* **processing_precision_finishing**布尔值，表示该加工能否进行精加工。
* **processing_precision_semi**布尔值，表示该加工能否进行半精加工。
* **processing_precision_rough**布尔值，表示该加工能否进行粗加工。

如以后需要加入新的加工精度可以使用ALTER TABLE向表中添加新的表示加工功能的字段。

### processing_resource.machine_tool表

#### 建表语句

            CREATE TABLE machine_tool (
                                        `machine_tool_name` VARCHAR(100) CHARSET utf8  NOT NULL,
                                        `machine_tool_serial_number` VARCHAR(100) CHARSET utf8 NOT NULL,
                                        `main_axle_rotation_speed` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                        `surface_roughness` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                        `processing_range` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                        `main_electric_machinery_power` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                        `processing_precision` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                        `processing_function_id` INT,
                                         FOREIGN KEY (`processing_function_id`) REFERENCES processing_function.processing_function (`processing_function_id`),
                                         PRIMARY KEY (`machine_tool_serial_number`)
                                      );

#### 字段说明

表中每一行都代表一个机床实例。每个默认值为**NULL**的字段，在某个机床不具备该方面的描述时，
值为**NULL**。

* **machine_tool_name**表示机床名称。
* **machine_tool_serial_number**主键，表示机床编号，对应唯一一个机床实例。
* **main_axle_rotation_speed**表示主轴转速。
* **surface_roughness**表示表面粗糙度。
* **processing_range**表示加工范围。
* **main_electric_machinery_power**表示主电机功率。
* **processing_precision**表示加工精度，与加工功能表中的不同。
* **processing_function_id**外键，来自**processing_function.processing_function**用于与所拥有的加工功能对应。

### processing_resource.cutter表

#### 建表语句

                CREATE TABLE cutter (
                                      `cutter_name` VARCHAR(100) CHARSET utf8 NOT NULL,
                                      `cutter_model` VARCHAR(100) CHARSET utf8 NOT NULL,
                                      `cutter_length` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `cutter_blade_diameter` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `cutter_diameter` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `cutter_tip_diameter` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `enter_angle` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `blade_width` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `screw_pitch` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `hilt_length` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `cutter_material` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `max_groove_depth` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `screw_type` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `blade_shape` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `blade_sum` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                      `cutting_edge_length` VARCHAR(100) CHARSET utf8 DEFAULT NULL,
                                       # detail on processing ability
                                      `processing_heat_resisting_alloy` BOOL DEFAULT 0,
                                      `processing_cast_iron` BOOL DEFAULT 0,
                                      `processing_titanium_alloy` BOOL DEFAULT 0,
                                      `processing_carbon_steel` BOOL DEFAULT 0,
                                      `processing_mild_steel` BOOL DEFAULT 0,
                                      `processing_steel` BOOL DEFAULT 0,
                                      `processing_nonferrous_metal` BOOL DEFAULT 0,
                                      `processing_stainless_steel` BOOL DEFAULT 0,
                                      `processing_gray_cast_iron` BOOL DEFAULT 0,
                                      `processing_alloy_steel` BOOL DEFAULT 0,
                                      `processing_function_id` INT NOT NULL,
                                       FOREIGN KEY (processing_function_id) REFERENCES processing_function.processing_function (`processing_function_id`),
                                       PRIMARY KEY (`cutter_name`, `cutter_model`)
                                   );

#### 字段说明

表中每一行都代表一个刀具实例。用一个布尔值来表示该刀具是否可以加工相应材料的加工对象。

* **cutter_name**表示刀具名称，与**cutter_model**一起构成主键。
* **cutter_model**表示刀具型号，与**cutter_name**一起构成主键。
* **cutter_length**表示刀具长度。
* **cutter_blade_diameter**表示刃径。
* **cutter_diameter**表示刀具直径。
* **cutter_tip_diameter**表示刀尖圆弧半径。
* **enter_angle**表示主偏角。
* **blade_width**表示刃宽。
* **screw_pitch**表示螺距。
* **hilt_length**表示刀柄长度。
* **cutter_material**表示刀具材料。
* **max_groove_depth**表示最大切槽深度。
* **screw_type**表示螺纹种类。
* **blade_shape**表示刀片形状。
* **blade_sum**表示刃数。
* **cutting_edge_length**表示切削刃长度。
* **processing_heat_resisting_alloy**布尔值，表示刀具能否加工**耐热合金**材料。
* **processing_cast_iron**布尔值，表示刀具能否加工**铸铁**材料。
* **processing_titanium_alloy**布尔值，表示刀具能否加工**钛合金**材料。
* **processing_carbon_steel**布尔值，表示刀具能否加工**碳钢**材料。
* **processing_mild_steel**布尔值，表示刀具能否加工**软钢**材料。
* **processing_steel**布尔值，表示刀具能否加工**钢**材料。
* **processing_nonferrous_metal**布尔值，表示刀具能否加工**有色金属**材料。
* **processing_stainless_steel**布尔值，表示刀具能否加工**不锈钢**材料。
* **processing_gray_cast_iron**布尔值，表示刀具能否加工**灰铸铁**材料。
* **processing_alloy_steel**布尔值，表示刀具能否加工**合金钢**材料。
* **processing_function_id**外键，来自**processing_function.processing_function**用于与拥有的加工功能相对应。