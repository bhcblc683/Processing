INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PLCNR/L1616H09",
enter_angle = "95度",
cutter_material = "有涂层（粗精加工）",
cutting_edge_length = "9mm",
hilt_length = "100mm",
cutter_name = "PCLN型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "80度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PLCNR/L2020K09",
enter_angle = "95度",
cutter_material = "有涂层",
cutting_edge_length = "9mm",
hilt_length = "125mm",
cutter_name = "PCLN型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "80度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PDJNR/L2020K15",
enter_angle = "93度",
cutter_material = "有涂层（粗精加工）",
cutting_edge_length = "15mm",
hilt_length = "150mm",
cutter_name = "PDJN型车刀",
cutter_tip_diameter = "0.2mm",
blade_shape = "55度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PDJNR/L2525M15",
enter_angle = "93度",
cutter_material = "有涂层（粗精加工）",
cutting_edge_length = "15mm",
hilt_length = "150mm",
cutter_name = "PDJN型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "55度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车外圆" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PTFNR/L12525M16",
enter_angle = "90度",
cutter_material = "有涂层",
cutting_edge_length = "16mm",
hilt_length = "150mm",
cutter_name = "PTFN型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "正三角形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PTFNR/L12525M22",
enter_angle = "90度",
cutter_material = "有涂层",
cutting_edge_length = "22mm",
hilt_length = "150mm",
cutter_name = "PTFN型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "正三角形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PCLNR/L2525M12",
enter_angle = "95度",
cutter_material = "有涂层",
cutting_edge_length = "12mm",
hilt_length = "150mm",
cutter_name = "PCLNR型车刀",
cutter_tip_diameter = "0.8mm",
blade_shape = "80度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PCLNR/L3225P12",
enter_angle = "95度",
cutter_material = "有涂层",
cutting_edge_length = "12mm",
hilt_length = "170mm",
cutter_name = "PCLNR型车刀",
cutter_tip_diameter = "0.8mm",
blade_shape = "80度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车端面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PSSNR/L2525M12",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "12mm",
hilt_length = "150mm",
cutter_name = "PSSNR型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车倒角" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "PSSNR/L3232P15",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "12mm",
hilt_length = "170mm",
cutter_name = "PSSNR型车刀",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车倒角" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "SDGCR/L1212F11",
enter_angle = "90度有偏置",
cutter_material = "有涂层",
cutting_edge_length = "11mm",
hilt_length = "80mm",
cutter_name = "SDGC型车刀",
cutter_tip_diameter = "0.8mm",
blade_shape = "55度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车削仿形加工" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "SDGCR/L1616H11",
enter_angle = "90度有偏置",
cutter_material = "有涂层",
cutting_edge_length = "11mm",
hilt_length = "100mm",
cutter_name = "SDGC型车刀",
cutter_tip_diameter = "0.8mm",
blade_shape = "55度菱形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车削仿形加工" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 0,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 1,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MMTER2020K16-C",
screw_type = "ISO公制螺纹60o",
cutter_tip_diameter = "0.13mm",
cutter_material = "VP10MF",
hilt_length = "125mm",
cutter_name = "MMT型车刀",
screw_pitch = "1mm",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车螺纹" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 0,
processing_titanium_alloy = 0,
processing_carbon_steel = 1,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 1,
cutter_model = "MMTER2525M16-C",
screw_type = "ISO公制螺纹60o",
cutter_tip_diameter = "0.19mm",
cutter_material = "VP15TF",
hilt_length = "150mm",
cutter_name = "MMT型车刀",
screw_pitch = "1.25mm",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车螺纹" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 1,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 1,
processing_gray_cast_iron = 1,
processing_alloy_steel = 1,
cutter_model = "MG1R/L2020K4315",
cutter_material = "涂层",
blade_width = "1.5-2.3mm",
hilt_length = "125mm",
cutter_name = "MG1型车刀",
max_groove_depth = "3mm",
cutter_tip_diameter = "0.2mm",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车沟槽" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 1,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 1,
processing_gray_cast_iron = 1,
processing_alloy_steel = 1,
cutter_model = "MG1R/L2525M4315",
cutter_material = "涂层",
blade_width = "2.3-3.3mm",
hilt_length = "150mm",
cutter_name = "MG1型车刀",
max_groove_depth = "4.5mm",
cutter_tip_diameter = "0.2mm",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="车沟槽" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MFA145-050R03A22-SE13M",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "13mm",
hilt_length = "一般",
cutter_name = "MFA145面铣刀",
cutter_diameter = "50mm",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
blade_sum = "3",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MFA145-063R04A22-SE13M",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "13mm",
hilt_length = "一般",
cutter_name = "MFA145面铣刀",
cutter_diameter = "63mm",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
blade_sum = "4",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MFA145-050R04A22-SE13M",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "13mm",
hilt_length = "一般",
cutter_name = "MFA145面铣刀",
cutter_diameter = "50mm",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
blade_sum = "4",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MFA145-063R05A22-SE13M",
enter_angle = "45度",
cutter_material = "有涂层",
cutting_edge_length = "13mm",
hilt_length = "一般",
cutter_name = "MFA145面铣刀",
cutter_diameter = "63mm",
cutter_tip_diameter = "0.4mm",
blade_shape = "正方形",
blade_sum = "5",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣较大平面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 0,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MEA190-050R04A22-AP16M",
enter_angle = "90度",
cutter_material = "有涂层",
cutting_edge_length = "16mm",
hilt_length = "一般",
cutter_name = "MEA190方肩铣刀",
cutter_diameter = "50mm",
cutter_tip_diameter = "0.4mm",
blade_shape = "平行四边形",
blade_sum = "4",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣台阶面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 1,
processing_cast_iron = 1,
processing_titanium_alloy = 1,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 1,
processing_stainless_steel = 1,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "MEA190-063R05A22-AP16M",
enter_angle = "一般",
cutter_material = "63mm",
cutting_edge_length = "0.4mm",
hilt_length = "16mm",
cutter_name = "MEA190方肩铣刀",
cutter_diameter = "5",
cutter_tip_diameter = "",
blade_shape = "90度",
blade_sum = "平行四边形",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣台阶面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "UPR100-S4-06015",
cutter_blade_diameter = "0.6mm",
cutter_material = "硬质合金",
cutting_edge_length = "15mm",
cutter_name = "UPR100粗加工立铣刀",
cutter_diameter = "6mm",
cutter_length = "50mm",
blade_sum = "4",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣沟槽" AND
processing_precision_finishing=0 AND
processing_precision_semi=0 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "UPR100-S4-08020",
cutter_blade_diameter = "0.8mm",
cutter_material = "硬质合金",
cutting_edge_length = "20mm",
cutter_name = "UPR100粗加工立铣刀",
cutter_diameter = "8mm",
cutter_length = "60mm",
blade_sum = "4",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣沟槽" AND
processing_precision_finishing=0 AND
processing_precision_semi=0 AND
processing_precision_rough=1)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "UP100-B2-06012",
cutter_blade_diameter = "6mm",
cutter_material = "硬质合金",
cutting_edge_length = "12mm",
cutter_name = "UP100-B2型球头铣刀",
cutter_diameter = "6mm",
cutter_length = "50mm",
blade_sum = "2",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣曲面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=0)
;
INSERT INTO processing_resource.cutter SET
processing_heat_resisting_alloy = 0,
processing_cast_iron = 1,
processing_titanium_alloy = 0,
processing_carbon_steel = 0,
processing_mild_steel = 0,
processing_steel = 1,
processing_nonferrous_metal = 0,
processing_stainless_steel = 0,
processing_gray_cast_iron = 0,
processing_alloy_steel = 0,
cutter_model = "UP100-B2-08014",
cutter_blade_diameter = "8mm",
cutter_material = "硬质合金",
cutting_edge_length = "14mm",
cutter_name = "UP100-B2型球头铣刀",
cutter_diameter = "8mm",
cutter_length = "60mm",
blade_sum = "2",
processing_function_id = (SELECT processing_function_id FROM processing_function.processing_function
WHERE
processing_function_name="铣曲面" AND
processing_precision_finishing=1 AND
processing_precision_semi=1 AND
processing_precision_rough=0)
;