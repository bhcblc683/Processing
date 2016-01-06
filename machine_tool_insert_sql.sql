INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.03平面度0.02",
main_electric_machinery_power = "3kw",
processing_range = "320×500",
main_axle_rotation_speed = "31.5-1400r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C6132",
surface_roughness = "Ra1.25",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.03平面度0.02",
main_electric_machinery_power = "3kw",
processing_range = "320×500",
main_axle_rotation_speed = "35-1600r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C6132A",
surface_roughness = "Ra1.25",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.03/300平面度0.03/300",
main_electric_machinery_power = "4kw",
processing_range = "320×750",
main_axle_rotation_speed = "15-1600r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "CW6132",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.03/300平面度0.02/300",
main_electric_machinery_power = "4kw",
processing_range = "320×750",
main_axle_rotation_speed = "35-1800r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "CH6132",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.01/100平面度0.015/200",
main_electric_machinery_power = "4kw",
processing_range = "320×750",
main_axle_rotation_speed = "20-1600r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C6132D",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.005圆柱度0.01平面度0.001",
main_electric_machinery_power = "2.5/2.8/4kw",
processing_range = "320×750",
main_axle_rotation_speed = "30-1400r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C6132E",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.01/100平面度0.015/300",
main_electric_machinery_power = "3kw",
processing_range = "320×750",
main_axle_rotation_speed = "44-1000r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C615",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.01/100平面度0.015/300",
main_electric_machinery_power = "3kw",
processing_range = "320×750",
main_axle_rotation_speed = "44-1000r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C615",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.005圆柱度0.02/300平面度0.015/300",
main_electric_machinery_power = "4kw",
processing_range = "320×750",
main_axle_rotation_speed = "45-1980r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C616",
surface_roughness = "Ra3.2",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车倒角" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.001圆柱度0.01/100平面度0.01/100",
main_electric_machinery_power = "4kw",
processing_range = "320×500",
main_axle_rotation_speed = "14-2000r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C616-1/500",
surface_roughness = "Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车倒角" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.003圆柱度0.03平面度0.003",
main_electric_machinery_power = "4/5.5kw",
processing_range = " 120×320",
main_axle_rotation_speed = "315-1600r/min",
machine_tool_name = "仿形车床",
machine_tool_serial_number = "CT7212",
surface_roughness = "Ra6.3",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车削仿形加工" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.03圆柱度0.03平面度0.03",
main_electric_machinery_power = "15kw",
processing_range = " 200×120",
main_axle_rotation_speed = "90-800r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C7220",
surface_roughness = "Ra6.3",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车削仿形加工" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.01/100平面度0.01/100",
main_electric_machinery_power = "4kw",
processing_range = "320×750",
main_axle_rotation_speed = "14-2000r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C616-1/750",
surface_roughness = "Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车螺纹" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.005圆柱度0.02/300平面度0.02/300",
main_electric_machinery_power = "2.5/2.8/4kw",
processing_range = " 360×880",
main_axle_rotation_speed = "28-1500r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C618K-2",
surface_roughness = "Ra0.8",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车螺纹" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01/300圆柱度0.01/300平面度0.02",
main_electric_machinery_power = "3.5-4kw",
processing_range = "360×750",
main_axle_rotation_speed = "29-1400r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "CW6136A",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车沟槽" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "圆度0.01圆柱度0.03/300平面度0.02/300",
main_electric_machinery_power = "4kw",
processing_range = "360×850",
main_axle_rotation_speed = "46-1400r/min",
machine_tool_name = "普通车床",
machine_tool_serial_number = "C360B-1",
surface_roughness = "Ra1.6",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车沟槽" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度（空）定位精度±0.013/350重复定位精度±0.005",
main_electric_machinery_power = "1.5kw",
processing_range = "250×1120",
main_axle_rotation_speed = "60-4200r/min",
machine_tool_name = "数控铣床",
machine_tool_serial_number = "XK5025",
surface_roughness = "粗糙度（空）",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度（空）定位精度±0.013/250重复定位精度±0.005",
main_electric_machinery_power = "3.7/5.5kw",
processing_range = "320×1220",
main_axle_rotation_speed = "120-1830r/min",
machine_tool_name = "数控铣床",
machine_tool_serial_number = "XK5032",
surface_roughness = "粗糙度（空）",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度（空）定位精度±0.013/250重复定位精度±0.005",
main_electric_machinery_power = "1.5kw",
processing_range = "270×1220",
main_axle_rotation_speed = "50-2750r/min",
machine_tool_name = "数控铣床",
machine_tool_serial_number = "NT-J320A",
surface_roughness = "粗糙度（空）",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度（空）定位精度±0.005重复定位精度±0.0025",
main_electric_machinery_power = "1.5kw",
processing_range = "500×1200",
main_axle_rotation_speed = "35-3500r/min",
machine_tool_name = "数控立式无升降台铣床",
machine_tool_serial_number = "XMK715",
surface_roughness = "粗糙度（空）",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02/150 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "1.5kw",
processing_range = "125×500",
main_axle_rotation_speed = "20-1830r/min",
machine_tool_name = "卧式升降台铣床",
machine_tool_serial_number = "X6012",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣台阶面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "3kw",
processing_range = "250×900",
main_axle_rotation_speed = "40-1800r/min",
machine_tool_name = "卧式升降台铣床",
machine_tool_serial_number = "XQ6025A",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣台阶面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02/500 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "1.5kw",
processing_range = "125×500",
main_axle_rotation_speed = "40-1800r/min",
machine_tool_name = "立式升降台铣床",
machine_tool_serial_number = "X5012",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣沟槽" AND
processing_precision_finishing=0 AND
processing_precision_semi=0 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "3kw",
processing_range = "200×900",
main_axle_rotation_speed = "60-1650r/min",
machine_tool_name = "立式升降台铣床",
machine_tool_serial_number = "X5020B",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣沟槽" AND
processing_precision_finishing=0 AND
processing_precision_semi=0 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "3kw",
processing_range = "200×900",
main_axle_rotation_speed = "125-2500r/min",
machine_tool_name = "立式升降台铣床",
machine_tool_serial_number = "X5020C",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣曲面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=0)
;
INSERT INTO processing_resource.machine_tool SET
processing_precision = "平面度0.02 定位精度（空）重复定位精度（空）",
main_electric_machinery_power = "3kw",
processing_range = "200×900",
main_axle_rotation_speed = "40-1800r/min",
machine_tool_name = "立式升降台铣床",
machine_tool_serial_number = "XQ5025A",
surface_roughness = "粗糙度Ra2.5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣曲面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=0)
;
