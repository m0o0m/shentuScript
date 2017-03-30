
lua_gender_null = 0 
lua_gender_male = 1            --- 男
lua_gender_female = 2          --- 女
lua_gender_max = 3

lua_job_null = 0 
lua_job_warrior = 1            --- 战士
lua_job_mage = 2               --- 法师
lua_job_tao = 3                --- 道士
lua_job_max = 4

lua_role_level = 0 
lua_role_job = 1
lua_role_hp = 2                    --- hp               
lua_role_max_hp = 3  
lua_role_mp = 4                    --- mp
lua_role_max_mp = 5 
lua_role_max_phy_def = 6           --- physical defense
lua_role_min_phy_def = 7 
lua_role_max_mag_def = 8           --- magical defense
lua_role_min_mag_def = 9   
lua_role_max_phy_atk = 10           --- physical attack
lua_role_min_phy_atk = 11 
lua_role_max_mag_atk = 12           --- magical attack
lua_role_min_mag_atk = 13  
lua_role_max_tao_atk = 14           --- taoism attack
lua_role_min_tao_atk = 15  

lua_role_hit = 16                   --- 命中
lua_role_miss = 17                  --- 闪避
lua_role_move_speed = 18            --- 移动速度，基准值
lua_role_attack_speed = 19	        --- 攻击速度，基准值

lua_role_weight = 20                --- 背包负重
lua_role_max_weight = 21
lua_role_equip_weight = 22          --- 装备负重
lua_role_max_equip_weight = 23
lua_role_brawn = 24                 --- 腕力
lua_role_max_brawn = 25

lua_role_point = 26                 --- 剩余属性点
lua_role_point_hp = 27              --- hp point
lua_role_point_mp = 28              --- mp point
lua_role_point_phy_atk = 29         --- physical attack point
lua_role_point_mag_atk = 30         --- magical attack point
lua_role_point_tao_atk = 31         --- taoism attack point
lua_role_point_phy_def = 32         --- physical defense point
lua_role_point_mag_def = 33         --- magical defense point

lua_role_ele_1_atk = 34             --- 属性攻击1
lua_role_ele_2_atk = 35             --- 属性攻击2
lua_role_ele_3_atk = 36             --- 属性攻击3
lua_role_ele_4_atk = 37             --- 属性攻击4
lua_role_ele_5_atk = 38             --- 属性攻击5

lua_role_ele_1_def = 39             --- 属性防御1
lua_role_ele_2_def = 40             --- 属性防御2
lua_role_ele_3_def = 41             --- 属性防御3
lua_role_ele_4_def = 42             --- 属性防御4
lua_role_ele_5_def = 43             --- 属性防御5

lua_role_hp_rec = 44                --- hp回复速度
lua_role_mp_rec = 45                --- mp回复速度
lua_role_poison_rec = 46            --- 中毒恢复速度

lua_role_energy = 47                --- 活力
lua_role_max_energy = 48            --- 活力上限

lua_role_burst = 49                 --- 暴击率
lua_role_luck_curse = 50            --- 幸运-诅咒
lua_role_pk = 51                    --- PK值
lua_role_prestige = 52              --- 声望
lua_role_meritorious = 53           --- 功勋
lua_role_achievement = 54           --- 成就

--------------------------------------------------------------------------
--- 转生
lua_role_reincarnation = 55         
lua_role_rein_hp = 56  
lua_role_rein_mp = 57 
lua_role_rein_max_phy_def = 58      --- physical defense
lua_role_rein_min_phy_def = 59 
lua_role_rein_max_mag_def = 60      --- magical defense
lua_role_rein_min_mag_def = 61   
lua_role_rein_max_phy_atk = 62      --- physical attack
lua_role_rein_min_phy_atk = 63 
lua_role_rein_max_mag_atk = 64      --- magical attack
lua_role_rein_min_mag_atk = 65  
lua_role_rein_max_tao_atk = 66      --- taoism attack
lua_role_rein_min_tao_atk = 67  
lua_role_rein_hit = 68              --- 命中
lua_role_rein_miss = 69             --- 闪避
lua_role_rein_burst = 70            --- 暴击率
lua_role_rein_weight = 71           --- 背包负重
lua_role_rein_equip_weight = 72     --- 装备负重
lua_role_rein_brawn = 73            --- 腕力
--------------------------------------------------------------------------

lua_role_bag_size_0 = 74            --- 包裹0大小
lua_role_bag_size_1 = 75            --- 包裹1大小
lua_role_bag_size_2 = 76            --- 包裹2大小
lua_role_bag_size_3 = 77            --- 包裹3大小
lua_role_bag_size_4 = 78            --- 包裹4大小

lua_role_warehouse_size = 79        --- 玩家的仓库大小
lua_role_warehouse_adv_size = 80    --- 玩家高级仓库大小
--------------------------------------------------------------------------

--- role 运行时百分比加成
lua_role_max_hp_pct = 81                --- hp 
lua_role_max_mp_pct = 82                --- mp
lua_role_max_phy_def_pct = 83           --- physical defense
lua_role_min_phy_def_pct = 84 
lua_role_max_mag_def_pct = 85           --- magical defense
lua_role_min_mag_def_pct = 86   
lua_role_max_phy_atk_pct = 87           --- physical attack
lua_role_min_phy_atk_pct = 88 
lua_role_max_mag_atk_pct = 89           --- magical attack
lua_role_min_mag_atk_pct = 90  
lua_role_max_tao_atk_pct = 91           --- taoism attack
lua_role_min_tao_atk_pct = 92  

lua_role_ele_1_atk_pct = 93             --- 属性攻击1
lua_role_ele_2_atk_pct = 94             --- 属性攻击2
lua_role_ele_3_atk_pct = 95             --- 属性攻击3
lua_role_ele_4_atk_pct = 96             --- 属性攻击4
lua_role_ele_5_atk_pct = 97             --- 属性攻击5

lua_role_ele_1_def_pct = 98             --- 属性防御1
lua_role_ele_2_def_pct = 99             --- 属性防御2
lua_role_ele_3_def_pct = 100             --- 属性防御3
lua_role_ele_4_def_pct = 101             --- 属性防御4
lua_role_ele_5_def_pct = 102             --- 属性防御5

lua_role_max_weight_pct = 103            --- 背包负重     
lua_role_max_equip_weight_pct = 104      --- 装备负重            
lua_role_max_brawn_pct = 105             --- 腕力

lua_role_hp_rec_pct = 106                --- hp回复速度
lua_role_mp_rec_pct = 107                --- mp回复速度
lua_role_poison_rec_pct = 108            --- 中毒恢复速度

--------------------------------------------------------------------------
--- 速度相关，另外一套运算
lua_role_move_speed_pct = 109            --- 移动速度
lua_role_attack_speed_pct = 110	        --- 攻击速度
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- 战斗属性
--------------------------------------------------------------------------
lua_role_suck_hp = 111               ---	吸当前hp - 数值
lua_role_suck_hp_pct = 112           --- 吸当前hp - 百分比
lua_role_suck_max_hp_pct = 113       ---	吸hp上限 - 百分比

lua_role_suck_mp = 114               ---	吸当前mp - 数值
lua_role_suck_mp_pct = 115           --- 吸当前mp - 百分比
lua_role_suck_max_mp_pct = 116       ---	吸mp上限 - 百分比

lua_role_ref_phy = 117               --- 物理伤害反射 - 数值
lua_role_ref_phy_pct = 118           --- 物理伤害反射 - 百分比

lua_role_ref_mag = 119               --- 魔法伤害反射 - 数值
lua_role_ref_mag_pct = 120           --- 魔法伤害反射 - 百分比

lua_role_imm_mag = 121               --- 魔法伤害减免 - 数值
lua_role_imm_mag_pct = 122           --- 魔法伤害减免 - 百分比

lua_role_imm_phy = 123               --- 物理伤害减免 - 数值
lua_role_imm_phy_pct = 124           --- 物理伤害减免 - 百分比
--------------------------------------------------------------------------

lua_role_atk_mode = 125              --- 攻击类型

--------------------------------------------------------------------------
--- 状态开关
--------------------------------------------------------------------------
lua_role_can_walk = 126              --- 能走路
lua_role_can_run = 127               --- 能跑步
lua_role_can_turn = 128              --- 能转向
lua_role_can_jump_map = 129          --- 能跳地图
lua_role_can_phy_atk = 130           --- 能物理攻击
lua_role_can_mag_atk = 131           --- 能魔法攻击
lua_role_can_use_item = 132          --- 能使用道具(包括换装)

lua_role_is_phy_imm = 133            --- 物理免疫
lua_role_is_mag_imm = 134            --- 魔法免疫
lua_role_is_stealth = 135            --- 隐形

lua_role_has_mana_shield = 136       --- 有mana shield
lua_role_has_collide = 137           --- 处于冲撞状态
lua_role_has_repelled = 138          --- 处于击退状态
lua_role_can_push = 139              --- 能被推
lua_role_can_use_skill = 140         --- 能使用技能

lua_role_is_black = 141              --- 是否为黑名

lua_role_has_imm_shield = 142        --- 有imm shield
lua_role_imm_shield = 143            --- imm shield 值

lua_role_has_bag_guard = 144         --- 有包裹防掉落
lua_role_has_equip_guard = 145       --- 有装备防掉落
lua_role_is_gray = 146               --- 灰名
lua_role_is_chaos = 147              --- 混沌
lua_role_is_poisoning = 148          --- 是否中毒(绿毒, 红毒走减防BUFF, 没有属性)
lua_role_is_ghost = 149              --- 是否ghost
lua_role_is_pk = 150                 --- 是否pk状态

lua_role_inner_force = 155                 --- 角色内功值
lua_role_inner_force_lv = 156                 --- 角色内功等级
lua_role_inner_force_rec = 157                 --- 内功恢复速度
lua_role_inner_force_rec_pct = 158                 --- 内功恢复速度百分比

--------------------------------------------------------------------------
--- 注意: 以上枚举不可随意变更 = 151 新增需放在尾部 !!!
--------------------------------------------------------------------------

lua_role_has_team = 180         --- 有队伍
lua_role_gender = 181                --- 性别
lua_role_head = 182                  --- 头像
lua_role_hair = 183                  --- 头发
lua_role_hair_color = 184            --- 头发颜色
lua_role_gm_level = 185              --- gm等级
lua_role_identify = 186              --- 鉴定积分
lua_role_title = 187                 --- 称号
lua_role_gold_settlement = 188       --- 金币结算: 1金币结算 0:绑币结算
lua_role_stall = 189                 --- 0: 未摆摊 1: 摆摊准备 2: 摆摊中
lua_role_friend_switch = 190         --- 0: 不可加好友       1: 可加好友
lua_role_team_switch = 191           --- 0: 不接收队伍邀请   1: 接收队伍邀请
lua_role_has_family = 192            --- 有行会
lua_role_exp_pct = 193               --- 经验倍数
lua_role_mag_miss = 194              --- 魔法闪避
lua_role_intensity = 195             --- 强度
lua_role_attack_pct = 196            --- 攻击力倍数
lua_role_defense_pct = 197           --- 防御力倍数
lua_role_gp_runtime = 198            --- gp error in runtime
lua_role_gp = 199                    --- gp error in db
lua_role_ride_switch = 200           --- 骑马开关
lua_role_vip_level = 201             --- 角色vip等级
lua_role_vip_buytimes = 202          --- 角色vip购买时间
lua_role_lock_switch = 203           --- 锁开关(0: 未解锁 1: 已解锁)
lua_role_effect1 = 204               --- 特效
lua_role_effect2 = 205
lua_role_effect3 = 206
lua_role_effect4 = 207
lua_role_effect5 = 208
lua_role_camp = 209                  --- 阵营
lua_role_avatar = 210                --- avatar

--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- 动态属性段
--------------------------------------------------------------------------
lua_role_dyn_att0 = 300 
lua_role_dyn_value0 = 301
lua_role_dyn_att1 = 302
lua_role_dyn_value1 = 303
lua_role_dyn_att2 = 304
lua_role_dyn_value2 = 305
lua_role_dyn_att3 = 306
lua_role_dyn_value3 = 307
lua_role_dyn_att4 = 308
lua_role_dyn_value4 = 309
lua_role_dyn_att5 = 310
lua_role_dyn_value5 = 311
lua_role_dyn_att6 = 312
lua_role_dyn_value6 = 313
lua_role_dyn_att7 = 314
lua_role_dyn_value7 = 315
lua_role_dyn_att8 = 316
lua_role_dyn_value8 = 317
lua_role_dyn_att9 = 318
lua_role_dyn_value9 = 319
lua_role_dyn_att10 = 320
lua_role_dyn_value10 = 321
lua_role_dyn_att11 = 322
lua_role_dyn_value11 = 323
lua_role_dyn_att12 = 324
lua_role_dyn_value12 = 325
lua_role_dyn_att13 = 326
lua_role_dyn_value13 = 327
lua_role_dyn_att14 = 328
lua_role_dyn_value14 = 329
lua_role_dyn_att15 = 330
lua_role_dyn_value15 = 331
lua_role_dyn_att16 = 332
lua_role_dyn_value16 = 333
lua_role_dyn_att17 = 334
lua_role_dyn_value17 = 335
lua_role_dyn_att18 = 336
lua_role_dyn_value18 = 337
lua_role_dyn_att19 = 338
lua_role_dyn_value19 = 339
lua_role_dyn_att20 = 340
lua_role_dyn_value20 = 341
lua_role_dyn_att21 = 342
lua_role_dyn_value21 = 343
lua_role_dyn_att22 = 344
lua_role_dyn_value22 = 345
lua_role_dyn_att23 = 346
lua_role_dyn_value23 = 347
lua_role_dyn_att24 = 348
lua_role_dyn_value24 = 349
lua_role_dyn_att25 = 350
lua_role_dyn_value25 = 351
lua_role_dyn_att26 = 352
lua_role_dyn_value26 = 353
lua_role_dyn_att27 = 354
lua_role_dyn_value27 = 355
lua_role_dyn_att28 = 356
lua_role_dyn_value28 = 357
lua_role_dyn_att29 = 358
lua_role_dyn_value29 = 359
lua_role_dyn_att30 = 360
lua_role_dyn_value30 = 361
lua_role_dyn_att31 = 362
lua_role_dyn_value31 = 363
lua_role_dyn_att32 = 364
lua_role_dyn_value32 = 365
lua_role_dyn_att33 = 366
lua_role_dyn_value33 = 367
lua_role_dyn_att34 = 368
lua_role_dyn_value34 = 369
lua_role_dyn_att35 = 370
lua_role_dyn_value35 = 371
lua_role_dyn_att36 = 372
lua_role_dyn_value36 = 373
lua_role_dyn_att37 = 374
lua_role_dyn_value37 = 375
lua_role_dyn_att38 = 376
lua_role_dyn_value38 = 377
lua_role_dyn_att39 = 378
lua_role_dyn_value39 = 379
lua_role_dyn_att40 = 380
lua_role_dyn_value40 = 381
lua_role_dyn_att41 = 382
lua_role_dyn_value41 = 383
lua_role_dyn_att42 = 384
lua_role_dyn_value42 = 385
lua_role_dyn_att43 = 386
lua_role_dyn_value43 = 387
lua_role_dyn_att44 = 388
lua_role_dyn_value44 = 389
lua_role_dyn_att45 = 390
lua_role_dyn_value45 = 391
lua_role_dyn_att46 = 392
lua_role_dyn_value46 = 393
lua_role_dyn_att47 = 394
lua_role_dyn_value47 = 395
lua_role_dyn_att48 = 396
lua_role_dyn_value48 = 397
lua_role_dyn_att49 = 398
lua_role_dyn_value49 = 399
lua_role_dyn_att50 = 400
lua_role_dyn_value50 = 401
lua_role_dyn_att51 = 402
lua_role_dyn_value51 = 403
lua_role_dyn_att52 = 404
lua_role_dyn_value52 = 405
lua_role_dyn_att53 = 406
lua_role_dyn_value53 = 407
lua_role_dyn_att54 = 408
lua_role_dyn_value54 = 409
lua_role_dyn_att55 = 410
lua_role_dyn_value55 = 411
lua_role_dyn_att56 = 412
lua_role_dyn_value56 = 413
lua_role_dyn_att57 = 414
lua_role_dyn_value57 = 415
lua_role_dyn_att58 = 416
lua_role_dyn_value58 = 417
lua_role_dyn_att59 = 418
lua_role_dyn_value59 = 419
lua_role_dyn_att60 = 420
lua_role_dyn_value60 = 421
lua_role_dyn_att61 = 422
lua_role_dyn_value61 = 423
lua_role_dyn_att62 = 424
lua_role_dyn_value62 = 425
lua_role_dyn_att63 = 426
lua_role_dyn_value63 = 427
lua_role_dyn_att64 = 428
lua_role_dyn_value64 = 429
lua_role_dyn_att65 = 430
lua_role_dyn_value65 = 431
lua_role_dyn_att66 = 432
lua_role_dyn_value66 = 433
lua_role_dyn_att67 = 434
lua_role_dyn_value67 = 435
lua_role_dyn_att68 = 436
lua_role_dyn_value68 = 437
lua_role_dyn_att69 = 438
lua_role_dyn_value69 = 439
lua_role_dyn_att70 = 440
lua_role_dyn_value70 = 441
lua_role_dyn_att71 = 442
lua_role_dyn_value71 = 443
lua_role_dyn_att72 = 444
lua_role_dyn_value72 = 445
lua_role_dyn_att73 = 446
lua_role_dyn_value73 = 447
lua_role_dyn_att74 = 448
lua_role_dyn_value74 = 449
lua_role_dyn_att75 = 450
lua_role_dyn_value75 = 451
lua_role_dyn_att76 = 452
lua_role_dyn_value76 = 453
lua_role_dyn_att77 = 454
lua_role_dyn_value77 = 455
lua_role_dyn_att78 = 456
lua_role_dyn_value78 = 457
lua_role_dyn_att79 = 458
lua_role_dyn_value79 = 459
lua_role_dyn_att80 = 460
lua_role_dyn_value80 = 461
lua_role_dyn_att81 = 462
lua_role_dyn_value81 = 463
lua_role_dyn_att82 = 464
lua_role_dyn_value82 = 465
lua_role_dyn_att83 = 466
lua_role_dyn_value83 = 467
lua_role_dyn_att84 = 468
lua_role_dyn_value84 = 469
lua_role_dyn_att85 = 470
lua_role_dyn_value85 = 471
lua_role_dyn_att86 = 472
lua_role_dyn_value86 = 473
lua_role_dyn_att87 = 474
lua_role_dyn_value87 = 475
lua_role_dyn_att88 = 476
lua_role_dyn_value88 = 477
lua_role_dyn_att89 = 478
lua_role_dyn_value89 = 479
lua_role_dyn_att90 = 480
lua_role_dyn_value90 = 481
lua_role_dyn_att91 = 482
lua_role_dyn_value91 = 483
lua_role_dyn_att92 = 484
lua_role_dyn_value92 = 485
lua_role_dyn_att93 = 486
lua_role_dyn_value93 = 487
lua_role_dyn_att94 = 488
lua_role_dyn_value94 = 489
lua_role_dyn_att95 = 490
lua_role_dyn_value95 = 491
lua_role_dyn_att96 = 492
lua_role_dyn_value96 = 493
lua_role_dyn_att97 = 494
lua_role_dyn_value97 = 495
lua_role_dyn_att98 = 496
lua_role_dyn_value98 = 497
lua_role_dyn_att99 = 498
lua_role_dyn_value99 = 499

lua_role_attr_max = 500

lua_role_app_body = 0            --- 身体
lua_role_app_weapon = 1         --- 武器
lua_role_app_wings = 2          --- 翅膀
lua_role_app_mount = 3          --- 坐骑
lua_role_app_max = 4

lua_item_type_null = 0 
lua_item_type_equip = 1	        --- 装备
lua_item_type_consumable = 2       --- 消耗品
lua_item_type_finite = 3           --- 有限品
lua_item_type_material = 4         --- 材料
lua_item_type_sundries = 5         --- 杂货
lua_item_type_bag = 6              --- 包裹
lua_item_type_warehouse_adv = 7    --- 高级仓库
lua_item_type_gold = 8             --- 金币
lua_item_type_bundle = 9           --- 打捆物品
lua_item_type_skill = 10            --- 技能特效类物品
lua_item_type_script = 11           --- 脚本物品

lua_item_type_max = 12

lua_equip_null = 0 
lua_equip_weapon = 1		 	    --- 武器
lua_equip_helmet = 2				--- 头盔	
lua_equip_wrist = 3 				--- 护腕
lua_equip_armor = 4				--- 衣服
lua_equip_juju = 5				    --- 符咒
lua_equip_shoes = 6			    --- 鞋子
lua_equip_shoulder = 7				--- 护肩
lua_equip_necklace = 8  			--- 项链
lua_equip_ring = 9  				--- 戒指
lua_equip_medal = 10				--- 勋章

lua_equip_gem = 11  				--- 宝石
lua_equip_wings = 12  				--- 翅膀
lua_equip_amulet = 13				--- 守护
lua_equip_mount = 14		    	--- 坐骑
lua_equip_max = 15

lua_material_null = 0 
lua_material_weapon_upgrade = 1        --- 升级武器材料
lua_material_reserved = 2		        --- (保留未使用)
lua_material_identify = 3 				--- 鉴定装备材料
lua_material_drill = 4				    --- 装备打孔材料
lua_material_lucky = 5				    --- 附加武器祝福材料
lua_material_gem = 6			        --- 宝石
lua_material_synthesis = 7			    --- 宝石合成符
lua_material_dig = 8			        --- 宝石摘除符
lua_material_embed = 9			        --- 宝石镶嵌符
lua_material_refine = 10			    --- 装备精练材料
lua_material_refine_lucky = 11			--- 装备精练幸运符材料
lua_material_speaker = 12			    --- 喇叭
lua_material_refine_transform = 13      --- 装备精练转移材料
lua_material_refine_imm = 14            --- 装备精练符
lua_material_identify_imm = 15          --- 装备鉴定符
lua_material_horse = 16                 --- 未开光马
lua_material_identify_horse = 17        --- 开光印
lua_material_max = 18

lua_weapon_null = 0             --- 通用类
lua_weapon_knife = 1               --- 刀类（战士类）
lua_weapon_sword = 2               --- 剑类（道士类）
lua_weapon_stick = 3               --- 仗类（法师类）
lua_weapon_max = 4

lua_juju_null = 0 
lua_juju_juju = 1                  --- 符咒类
lua_juju_poison = 2                --- 毒药类
lua_juju_max = 3

lua_bind_null = 0               --- 无绑定
lua_bind_on_use = 1                --- 使用绑定
lua_bind_on_pick_up = 2            --- 拾取绑定
lua_bind_max = 3                    

lua_site_null = 0 
lua_site_weapon = 1            --- 武器
lua_site_helmet = 2            --- 头盔	
lua_site_wrist_0 = 3           --- 护腕0
lua_site_wrist_1 = 4           --- 护腕1
lua_site_armor = 5             --- 衣服
lua_site_juju = 6              --- 符咒
lua_site_shoes = 7             --- 鞋子
lua_site_shoulder = 8          --- 护肩
lua_site_necklace = 9          --- 项链
lua_site_ring_0 = 10            --- 戒指0
lua_site_ring_1 = 11            --- 戒指1
lua_site_medal = 12             --- 勋章

lua_site_gem = 13               --- 宝石
lua_site_wings = 14             --- 翅膀
lua_site_amulet = 15            --- 守护
lua_site_mount = 16             --- 坐骑

lua_site_expand_0 = 17          --- 背包0扩充位置
lua_site_expand_1 = 18          --- 背包1扩充位置
lua_site_expand_2 = 19          --- 背包2扩充位置
lua_site_expand_3 = 20          --- 背包3扩充位置
lua_site_expand_4 = 21          --- 背包4扩充位置

LUA_MAX_SLOT_PER_BAG = 40
LUA_MAX_WAREHOUSE_SIZE = 40
LUA_MAX_WAREHOUSE_ADV_SIZE = 144

lua_site_bag_0			= 22                                        		--- 第0背包
lua_site_bag_1			= lua_site_bag_0 + LUA_MAX_SLOT_PER_BAG             --- 第1背包
lua_site_bag_2			= lua_site_bag_1 + LUA_MAX_SLOT_PER_BAG             --- 第2背包
lua_site_bag_3			= lua_site_bag_2 + LUA_MAX_SLOT_PER_BAG             --- 第3背包
lua_site_bag_4          = lua_site_bag_3 + LUA_MAX_SLOT_PER_BAG             --- 第4背包

lua_site_warehouse      = lua_site_bag_4 + LUA_MAX_SLOT_PER_BAG             --- 仓库
lua_site_warehouse_adv  = lua_site_warehouse + LUA_MAX_WAREHOUSE_SIZE       --- 高级仓库

lua_site_end            = lua_site_warehouse_adv + LUA_MAX_WAREHOUSE_ADV_SIZE

lua_quality_general = 0       --- 普通, 白色

lua_item_att_pos = 0            --- 物品当前所在的位置
lua_item_att_amount = 1            --- 物品当前的堆叠数量
lua_item_att_durability = 2        --- 物品当前耐久
lua_item_att_max_durability = 3    --- 物品最大耐久
lua_item_att_use_count = 4         --- 物品当前的使用次数    
lua_item_att_is_bound = 5          --- 物品是否被绑定
lua_item_att_life = 6              --- 物品存活时间
lua_item_att_skill_id = 7          --- 技能id
lua_item_att_max = 8

lua_skill_type_null = 0 
lua_skill_type_fight = 1       --- 战斗技能
lua_skill_type_passive = 2     --- 被动技能
lua_skill_type_restore = 3     --- 治疗技能
lua_skill_type_life = 4        --- 生活技能
lua_skill_type_teleport = 5    --- 瞬移技能
lua_skill_type_special = 9  --- 特殊技能
lua_skill_type_max = 10

lua_teleport_null = 0 
lua_teleport_rand_limit = 1    --- 本地图限制随机
lua_teleport_rand = 2          --- 本地图随机
lua_teleport_relive = 3        --- 复活点
lua_teleport_relive_rand = 4   --- 复活点所在地图随机
lua_teleport_relive_max = 5

lua_repel_type_null = 0     --- 无
lua_repel_type_collide = 1     --- 冲撞
lua_repel_type_repelled = 2    --- 击退

lua_repel_collide_null = 0      --- 无
lua_repel_collide_with_target = 1  --- 带目标冲撞
lua_repel_collide_no_target = 2    --- 无目标冲撞

lua_role_exp = 0            --- 经验
lua_role_ingot = 1             --- 元宝      
lua_role_bind_ingot = 2        --- 绑定元宝     
lua_role_integral = 3          --- 积分   
lua_role_gold = 4              --- 金币      
lua_role_bind_gold = 5         --- 绑定金币
lua_role_gold_deposit = 6      --- 仓库金币
lua_role_inner_force_exp = 7	--内功经验
lua_role_attr_ext_max = 8

lua_atk_mode_all = 0 
lua_atk_mode_peace = 1
lua_atk_mode_team = 2
lua_atk_mode_guild = 3
lua_atk_mode_pk = 4
lua_atk_mode_alliance = 5
lua_atk_mode_camp = 6
lua_atk_mode_max = 7

lua_damage_type_null = 0 
lua_damage_type_phy = 1
lua_damage_type_mag = 2
lua_damage_type_tao = 3
lua_damage_type_max = 4

lua_restore_type_null = 0 
lua_restore_type_quick = 1
lua_restore_type_tao = 2
lua_restore_type_max = 3

lua_shape_type_null = 0 
lua_shape_type_line = 1
lua_shape_type_rect = 2
lua_shape_type_fan = 3
lua_shape_type_fan_ex = 4
lua_shape_type_max = 5

lua_buff_relation_null = 0 
lua_buff_relation_replace = 1
lua_buff_relation_offset = 2
lua_buff_relation_ignore = 3
lua_buff_relation_max = 4

lua_quick_bar_null = 0 
lua_quick_bar_item = 1
lua_quick_bar_skill = 2
lua_quick_bar_max = 3

lua_relive_skill = 0    --技能复活
lua_relive_local = 1       --原地复活
lua_relive_map = 2         --回城复活
lua_relive_dungeon = 3      --副本复活

lua_enhance_type_phy = 0 
lua_enhance_type_mag = 1
lua_enhance_type_tao = 2
lua_enhance_type_max = 3

lua_stall_state_null = 0    --- 未摆摊
lua_stall_state_ready = 1      --- 摆摊准备
lua_stall_state_ok = 2         --- 摆摊中
lua_stall_state_max = 3

lua_stall_price_gold = 0    --- 金币
lua_stall_price_ingot = 1      --- 元宝
lua_stall_price_max = 2

lua_item_drop_null = 0 
lua_item_drop_active = 1
lua_item_drop_player = 2
lua_item_drop_monster = 3
lua_item_drop_script = 4
lua_item_drop_map = 5
lua_item_drop_map_auto = 6
lua_item_drop_max = 7

lua_item_special_drop_never         = 1 
lua_item_special_drop_on_logout     = 2 
lua_item_special_drop_on_jump_map   = 4 
lua_item_special_drop_on_die        = 8 
lua_item_special_drop_max = 9

lua_servant_source_null = 0 
lua_servant_source_catch = 1   --- 捕捉
lua_servant_source_summon = 2  --- 召唤
lua_servant_source_max = 3

lua_pk_state_null = 0 
lua_pk_state_white = 1         --- 白名
lua_pk_state_yellow = 2        --- 黄名
lua_pk_state_gray = 3          --- 灰名
lua_pk_state_red = 4           --- 红名
lua_pk_state_max = 5

lua_region_safe =0      ---复活区         
lua_region_stall = 1       ---摆摊区
lua_region_athletics = 2   ---竞技区
lua_region_relive = 3      ---复活区
lua_region_red_name = 4    ---红名区
lua_region_born = 5        ---出生区域
lua_region_jump = 6        ---跳转区域
lua_region_num = 7

lua_player_switch_type_friend = 0 
lua_player_switch_type_team = 1
lua_player_switch_type_max = 2

lua_normal_attack_null = 0 
lua_normal_attack_liehuo = 1
lua_normal_attack_gongsha = 2
lua_normal_attack_cisha = 3
lua_normal_attack_banyue = 4
lua_normal_attack_self = 5
lua_normal_attack_max = 6

lua_skill_fly_dynamic = 0 
lua_skill_fly_fixed = 1
lua_skill_fly_dynamic_fixed = 2
lua_skill_fly_max = 3

lua_skill_find_target_on_spell = 0 
lua_skill_find_target_after_delay = 1
lua_skill_find_target_max = 2

lua_event_null = 0 
lua_event_fire_wall = 1
lua_event_max = 2

lua_repair_type_null = 0 
lua_repair_type_normal = 1
lua_repair_type_ex = 2
lua_repair_type_max = 3

lua_map_common = 0  --普通地图
lua_map_dungeon = 1    --副本地图

lua_role_last_login = 0      --角色最后登陆时间FLAG
lua_role_online = 1             --角色在线时间FLAG
lua_role_max_online = 2         --角色总在线时长FLAG
lua_role_last_attack = 3        --角色最后攻击时间FLAG
lua_role_last_move = 4          --角色最后移动时间FLAG
lua_role_last_chat = 5          --角色最后聊天时间FLAG
lua_role_today_online = 6       --角色当天在线时长
lua_role_last_logout = 7        --角色最后下线时间FLAG

lua_role_account_name = 0   --角色帐号名的FLAG
lua_role_ip = 1                --角色的IP地址
lua_role_user_name = 2         --角色用户名的FLAG
lua_role_home_map = 3          --角色回城地图的FLAG
lua_role_home_map_key = 4      --角色回城地图的keyname
lua_role_alias = 5             --角色称谓的FLAG
lua_role_guild = 6             --角色公会名的FLAG
lua_role_current_map = 7       --角色当前地图名的FLAG
lua_role_current_map_key = 8   --角色当前地图的keyname

lua_role_guild_id = 0       --角色公会ID的FLAG
lua_role_current_map_id = 1    --玩家所属地图ID的FLAG
lua_role_home_map_id = 2       --玩家回城地图ID(GUID)的FLAG

lua_role_attr_add = 10000   --角色属性增加
lua_role_attr_sub = 10001          --角色属性减少
lua_role_attr_equal = 10002        --角色属性设置

lua_param_type_null = 0 
lua_param_type_int8 = 1
lua_param_type_uint8 = 2
lua_param_type_int16 = 3
lua_param_type_uint16 = 4
lua_param_type_int32 = 5
lua_param_type_uint32 = 6
lua_param_type_int64 = 7
lua_param_type_uint64 = 8
lua_param_type_string = 9
lua_param_type_max = 10

lua_bind_require_false = 0  --- 必须非绑定
lua_bind_require_true = 1      --- 必须绑定
lua_bind_require_any = 2       --- 绑定非绑定都可以
lua_bind_require_max = 3

lua_rand_type_only_one = 0  --- only one
lua_rand_type_rand = 1         --- rand
lua_rand_type_max = 2

lua_trigger_null = 0 
lua_trigger_system_start = 1               --- system call, don't need to manually add
lua_trigger_first_in_game = 2
lua_trigger_login = 3
lua_trigger_logout = 4
lua_trigger_castle_war_start = 5
lua_trigger_castle_war_end = 6
lua_trigger_castle_war_init = 7
lua_trigger_gp = 8
lua_trigger_map_create = 200            --- system call, don't need to manually add
lua_trigger_map_destroy = 201                --- system call, don't need to manually add
lua_trigger_enter_map = 202
lua_trigger_leave_map = 203
lua_trigger_item_appear = 204
lua_trigger_item_disappear = 205
lua_trigger_monster_appear = 206
lua_trigger_monster_disappear = 207
lua_trigger_npc_appear = 208
lua_trigger_npc_disappear = 209
lua_trigger_level_up = 300 
lua_trigger_pre_equip = 301
lua_trigger_post_equip = 302
lua_trigger_pre_un_equip = 303
lua_trigger_post_un_equip = 304
lua_trigger_move = 305
lua_trigger_pre_spell = 306
lua_trigger_spell = 307
lua_trigger_pre_mining = 308
lua_trigger_mining = 309
lua_trigger_pre_item_apply = 310
lua_trigger_item_apply = 311
lua_trigger_pre_item_pickup = 312
lua_trigger_item_pickup = 313
lua_trigger_pre_item_drop = 314
lua_trigger_item_drop = 315      --扔东西的触发
lua_trigger_pre_die = 316
lua_trigger_post_die = 317
lua_trigger_kill = 318
lua_trigger_attack = 319
lua_trigger_hp = 320
lua_trigger_mp = 321
lua_trigger_damage_process = 322
lua_trigger_restore_process = 323
lua_trigger_teleport = 324
lua_trigger_pre_catch = 325
lua_trigger_catch = 326
lua_trigger_pre_dig_meat = 327
lua_trigger_dig_meat = 328
lua_trigger_add_buff = 329
lua_trigger_remove_buff = 330
lua_trigger_pre_drop = 331       --要不要爆东西
lua_trigger_post_drop = 332  
lua_trigger_pre_drop_one = 333
lua_trigger_post_drop_one = 334  --掉了某个具体的东西
lua_trigger_add_skill = 335
lua_trigger_switch_skill = 336
lua_trigger_summon = 337
lua_trigger_pre_process_pk = 338
lua_trigger_post_process_pk = 339
lua_trigger_create = 340
lua_trigger_destroy = 341
lua_trigger_npc_visit = 342
lua_trigger_pre_enter_jump = 343
lua_trigger_equip_suit = 344                 --- 套装穿齐
lua_trigger_un_equip_suit = 345              --- 套装不齐
lua_trigger_item_amount_zero = 346           --- amount为0删除
lua_trigger_item_use_zero = 347              --- 使用次数为0删除
lua_trigger_item_dur_zero = 348              --- 耐久为0删除
lua_trigger_item_timeup = 349                --- 时效过期删除
lua_trigger_add_exp = 350
lua_trigger_monster_born = 351
lua_trigger_player_relive = 352
lua_trigger_dungeon_end = 353				--- 副本结束时回调
lua_trigger_timer_check = 354                --- 定时检查
lua_trigger_add_exp_all = 355                --- 所有获取经验
lua_trigger_player_pre_die = 356             --- 人物死亡前触发
lua_trigger_player_post_die = 357            --- 人物死亡后触发
lua_trigger_monster_pre_die = 358            --- 怪物死亡前触发
lua_trigger_monster_post_die = 359           --- 怪物死亡后触发
lua_trigger_attack_ex = 360                  --- on_attack加强版，多了扣血值与技能参数
lua_trigger_system_stop = 361								--- system call, don't need to manually add
lua_trigger_pre_logout = 362								--- 玩家下线前触发
lua_trigger_ride_request = 363				--玩家上马触发
lua_trigger_ride_request = 364				--玩家下马触发
lua_trigger_billin = 365                     -- 充值触发，只有玩家在线才会触发
lua_trigger_mall = 366                         -- 商城消费触发
lua_trigger_max = 367

lua_quest_type_null = 0             --- null
lua_quest_type_main = 1
lua_quest_type_other = 2
lua_quest_type_max = 3

lua_quest_track_state_null = 0             --- null
lua_quest_track_state_group_hunting = 1
lua_quest_track_state_hunting = 2
lua_quest_track_state_huntlevel = 3
lua_quest_track_state_group_item = 4
lua_quest_track_state_item = 5
lua_quest_track_state_apply_item = 6
lua_quest_track_state_npc = 7
lua_quest_track_state_max = 8

lua_item_logic_type_all = 0 

lua_item_logic_type_money = 1
lua_item_logic_type_equip = 2
lua_item_logic_type_material = 3
lua_item_logic_type_book = 4
lua_item_logic_type_drug = 5
lua_item_logic_type_function = 6
lua_item_logic_type_other = 7

lua_item_logic_type_max = 8

lua_equip_logic_all = 0 
lua_equip_logic_weapon = 1		 	    --- 武器
lua_equip_logic_armor = 2				--- 衣服
lua_equip_logic_helmet = 3				--- 头盔	
lua_equip_logic_necklace = 4  			--- 项链
lua_equip_logic_wrist = 5 				--- 护腕
lua_equip_logic_ring = 6  				--- 戒指
lua_equip_logic_shoes = 7			    --- 鞋子

lua_equip_logic_max = 8

lua_material_logic_all = 0 
lua_material_logic_image = 1		 	    --- 图样
lua_material_logic_spirit = 2				--- 精元
lua_material_logic_mine = 3				--- 矿石	
lua_material_logic_refine = 4  			--- 精炼
lua_material_logic_other = 5 				--- 其他

lua_material_logic_max = 6

lua_book_logic_all = 0 
lua_book_logic_war = 1		 	    --- 战士类
lua_book_logic_mag = 2				--- 法师类
lua_book_logic_tao = 3				--- 道士类

lua_book_logic_max = 4

lua_drug_logic_all = 0 
lua_drug_logic_normal = 1		 	    --- 普通类
lua_drug_logic_immediate = 2			--- 瞬回类
lua_drug_logic_other = 3				--- 其他类

lua_drug_logic_max = 4

lua_function_logic_all = 0 
lua_function_logic_poison = 1		 	    --- 符毒
lua_function_logic_fly = 2			        --- 传送
lua_function_logic_bag = 3				    --- 格子扩展
lua_function_logic_other = 4				--- 其他

lua_function_logic_max = 5

lua_log_action_null = 0 
lua_log_action_item_site_fixed = 1         --- 位置已修正
lua_log_action_item_site_error = 2         --- 位置修正失败
lua_log_action_item_error = 3              --- 物品出现错误，系统自动删除
lua_log_action_buff_error = 4              --- buff出现错误
lua_log_action_item_stream = 5             --- 物品序列化删除
lua_log_action_crash = 6                   --- 程序异常
lua_log_action_item_to_json_one = 7        --- 物品紧急保存一个
lua_log_action_item_to_json = 8            --- 物品紧急保存
lua_log_action_bag_item_site_error = 9     --- 背包物品格子错误
lua_log_action_item_guid_error = 10         --- 物品guid错误
lua_log_action_item_guid_dup = 11           --- 物品guid重复
lua_log_action_player_die = 1000 
lua_log_action_player_chat = 1001
lua_log_action_player_level_up = 1002
lua_log_action_player_exp = 1003
lua_log_action_player_ingot = 1004
lua_log_action_player_bind_ingot = 1005
lua_log_action_player_integral = 1006
lua_log_action_player_gold = 1007
lua_log_action_player_bind_gold = 1008
lua_log_action_player_gold_deposit = 1009
lua_log_action_player_use_item = 1010
lua_log_action_player_buy_item = 1011
lua_log_action_player_sell_item = 1012
lua_log_action_player_drop_item = 1013
lua_log_action_player_pickup_item = 1014
lua_log_action_player_mall_item = 1015
lua_log_action_player_enter_map = 1016
lua_log_action_player_leave_map = 1017
lua_log_action_player_die_drop_item = 1018
lua_log_action_player_trade_p2p_item = 1019
lua_log_action_player_trade_stall_item = 1020
lua_log_action_player_login = 1021
lua_log_action_player_logout = 1022
lua_log_action_player_item_dur_zero = 1023
lua_log_action_player_item_usecount_zero = 1024
lua_log_action_player_item_time_zero = 1025
lua_log_action_player_user_cmd = 1026
lua_log_action_player_gm_cmd = 1027
lua_log_action_player_market_sell = 1028
lua_log_action_player_market_buy = 1029
lua_log_action_player_market_delegate = 1030
lua_log_action_player_mail_pick = 1031
lua_log_action_player_mail_send = 1032
lua_log_action_player_item_e2e = 1033
lua_log_action_player_item_e2b = 1034
lua_log_action_player_item_b2e = 1035
lua_log_action_player_item_b2b = 1036
lua_log_action_player_item_b2w = 1037
lua_log_action_player_item_b2wa = 1038
lua_log_action_player_item_be2be = 1039
lua_log_action_player_item_b2be = 1040
lua_log_action_player_item_be2b = 1041
lua_log_action_player_item_w2w = 1042
lua_log_action_player_item_w2b = 1043
lua_log_action_player_item_wa2wa = 1044
lua_log_action_player_item_wa2b = 1045
lua_log_action_player_item_amount_zero = 1046
lua_log_action_player_kick = 1047
lua_log_action_player_create = 1048
lua_log_action_player_delete = 1049
lua_log_action_player_recover = 1050
lua_log_action_player_dig_item = 1051
lua_log_action_player_mine_item = 1052
lua_log_action_player_gm_item = 1053
lua_log_action_player_gm_map_item = 1054
lua_log_action_player_item_drop_map_auto = 1055       --- 自动掉地板
lua_log_action_player_item_drop_unknown = 1056        --- 未知掉落
lua_log_action_player_identify_item = 1057
lua_log_action_player_modify_attr = 1058				---修改玩家属性
lua_log_action_player_arrange_b = 1500 
lua_log_action_player_arrange_w = 1501
lua_log_action_player_arrange_wa = 1502
lua_log_action_player_buff_add = 1600 
lua_log_action_player_buff_remove = 1601
lua_log_action_player_quest_accept = 1800 
lua_log_action_player_quest_accomplish = 1801
lua_log_action_player_quest_track_change = 1802
lua_log_action_player_quest_drop = 1803
lua_log_action_player_gp = 1804
lua_log_action_player_gp_drop = 1805
lua_log_action_player_gp_detail = 1806
lua_log_action_player_kill = 1807
lua_log_action_player_learn_skill = 1808      -- 玩家获取技能
lua_log_action_player_join_team = 1809        -- 玩家组队
lua_log_action_player_family_create = 1810
lua_log_action_player_family_join = 1811
lua_log_action_player_family_leave = 1812
lua_log_action_player_family_expell = 1813
lua_log_action_player_family_promote = 1814
lua_log_action_player_family_destroy = 1815
lua_log_action_monster_die = 2000 
lua_log_action_monster_die_drop_item = 2001
lua_log_action_monster_die_drop_gold = 2002
lua_log_action_script_add_item = 3000 
lua_log_action_script_remove_item = 3001
lua_log_action_map_drop_item = 4000 
lua_log_action_map_drop_gold = 4001
lua_log_action_map_item_expire = 4002
lua_log_action_castle_init_war = 5000 
lua_log_action_castle_starting_war = 5001
lua_log_action_castle_ending_war = 5002
lua_log_action_castle_stop_war = 5003
lua_log_action_castle_temp_family = 5004
lua_log_action_glory_finish = 5500 
lua_log_action_test = 10000 
lua_log_action_user_define_start = 30000 
lua_log_action_max = 30001

lua_castle_state_null = 0       --- 城堡战未定义
lua_castle_state_init = 1          --- 城堡初始化完成
lua_castle_state_starting = 2      --- 触发城堡战开启脚本回调
lua_castle_state_running = 3       --- 城堡脚本触发成功
lua_castle_state_ending = 4        --- 触发城堡战结束脚本回调
lua_castle_state_max = 5

lua_gp_data_type_move = 0 
lua_gp_data_type_spell = 1
lua_gp_data_type_max = 2

-- 等级榜
lua_sort_type_level = 0 
lua_sort_type_level_warrior = 1
lua_sort_type_level_mage = 2
lua_sort_type_level_tao = 3

-- 魅力榜
lua_sort_type_beauty = 4
lua_sort_type_beauty_male = 5
lua_sort_type_beauty_female = 6

-- 师徒榜
lua_sort_type_students = 7
lua_sort_type_students_warrior = 8
lua_sort_type_students_mage = 9
lua_sort_type_students_tao = 10

--兵器榜
lua_sort_type_weapon_warrior = 11
lua_sort_type_weapon_mage = 12
lua_sort_type_weapon_tao = 13

lua_sort_type_max = 14

lua_eMail_Type_System = 0 
lua_eMail_Type_User = 1

lua_eMail_Type_Num = 2

-- 代码里的操作
lua_glory_trigger_wield_equip = 1 
lua_glory_trigger_kill_monster = 2
lua_glory_trigger_level_up = 3
lua_glory_trigger_dig = 4
lua_glory_trigger_learn_skill = 5
lua_glory_trigger_use_item = 6
lua_glory_trigger_finish_glory = 7
lua_glory_trigger_join_team = 8
lua_glory_trigger_market_delegate = 9
lua_glory_trigger_enter_map = 10
lua_glory_trigger_trade_stall_sell = 11
lua_glory_trigger_join_family = 12
lua_glory_trigger_join_war = 13
lua_glory_trigger_join_castle = 14
lua_glory_trigger_vip = 15

-- 脚本里的操作
lua_glory_trigger_script_start = 1000 
lua_glory_trigger_offline_exp = 1001
lua_glory_trigger_taofa = 1002
lua_glory_trigger_jinglian = 1003
lua_glory_trigger_jianding = 1004
lua_glory_trigger_fengying = 1005
lua_glory_trigger_catch_horse = 1006
lua_glory_trigger_horse_kaiguang = 1007
lua_glory_trigger_biao = 1008
lua_glory_trigger_Login = 1009      --角色登陆游戏
lua_glory_trigger_OnlineTime = 1010 --角色在线时间
lua_glory_trigger_horse_level_top = 1011  --坐骑升级到顶

lua_wsc_map_bx_npc_timer = 10001	--巫山城宝箱NPC定时器
lua_jln_map_bx_npc_timer = 10002	--绝路岭宝箱NPC定时器
lua_jlg_map_bx_npc_timer = 10003	--绝路谷宝箱NPC定时器
lua_kld1_map_bx_npc_timer = 10004	--骷髅殿一层宝箱NPC定时器
lua_kld2_map_bx_npc_timer = 10005	--骷髅殿二层宝箱NPC定时器
lua_kld3_map_bx_npc_timer = 10006	--骷髅殿三层宝箱NPC定时器
lua_jsm1_map_bx_npc_timer = 10007	--僵尸墓一层宝箱NPC定时器
lua_jsm2_map_bx_npc_timer = 10008	--僵尸墓二层宝箱NPC定时器
lua_jsm3_map_bx_npc_timer = 10009	--僵尸墓三层宝箱NPC定时器
lua_jlc1_map_bx_npc_timer = 10010	--绝路城一层宝箱NPC定时器
lua_jlc2_map_bx_npc_timer = 10011	--绝路城二层宝箱NPC定时器
lua_jlc3_map_bx_npc_timer = 10012	--绝路城三层宝箱NPC定时器
lua_ysax1_map_bx_npc_timer = 10013	--妖山暗穴一层宝箱NPC定时器
lua_ysax2_map_bx_npc_timer = 10014	--妖山暗穴二层宝箱NPC定时器
lua_ysax3_map_bx_npc_timer = 10015	--妖山暗穴三层宝箱NPC定时器
lua_ysax4_map_bx_npc_timer = 10016	--妖山暗穴四层宝箱NPC定时器
lua_ysax5_map_bx_npc_timer = 10017	--妖山暗穴五层宝箱NPC定时器
lua_thz1_map_bx_npc_timer = 10018	--天荒阵一层宝箱NPC定时器
lua_thz2_map_bx_npc_timer = 10019	--天荒阵二层宝箱NPC定时器
lua_thz3_map_bx_npc_timer = 10020	--天荒阵三层宝箱NPC定时器
lua_thz4_map_bx_npc_timer = 10021	--天荒阵四层宝箱NPC定时器
lua_thz5_map_bx_npc_timer = 10022	--天荒阵五层宝箱NPC定时器
lua_thz6_map_bx_npc_timer = 10023	--天荒阵六层宝箱NPC定时器
lua_thxm1_map_bx_npc_timer = 10024	--天荒邪庙一层宝箱NPC定时器
lua_thxm2_map_bx_npc_timer = 10025	--天荒邪庙二层宝箱NPC定时器
lua_thxm3_map_bx_npc_timer = 10026	--天荒邪庙三层宝箱NPC定时器
lua_thxm4_map_bx_npc_timer = 10027	--天荒邪庙四层宝箱NPC定时器
lua_thxm71_map_bx_npc_timer = 10028--天荒邪庙七层一宝箱NPC定时器
lua_thxm72_map_bx_npc_timer = 10029--天荒邪庙七层二宝箱NPC定时器
lua_thxm73_map_bx_npc_timer = 10030--天荒邪庙七层三宝箱NPC定时器
lua_thxm4_map_cs_npc_timer = 10031	--天荒邪庙四层邪庙传送使者刷新定时器
lua_thxm4_map_cs_npc_destroy_timer = 10032	--天荒邪庙四层邪庙传送使者销毁定时器
lua_ysax_dgwf_timer = 10033			--妖山暗穴地宫玩法
lua_lc_map_bx_npc_timer = 10034		--龙城宝箱NPC定时器
lua_jyjjc_timer1 = 10035		--精英竞技场公告定时器1
lua_jyjjc_timer2 = 10036		--精英竞技场公告定时器2
lua_jyjjc_timer3 = 10037		--精英竞技场公告定时器3
lua_jyjjc_timer4 = 10038		--精英竞技场公告定时器4
lua_jyjjc_timer5 = 10039		--精英竞技场公告定时器5
lua_jyjjc_timer6 = 10040		--精英竞技场公告定时器6
lua_jyjjc_timer7 = 10041		--精英竞技场比赛结束定时器
lua_jyjjc_timer8 = 10042		--精英竞技场发放奖励定时器
lua_jyjjc_timer9 = 10043		--精英竞技场季军赛开始定时器
lua_tmsk1_map_bx_npc_timer = 10044		--天魔石窟一层宝箱定时器
lua_tmsk2_map_bx_npc_timer = 10045		--天魔石窟二层宝箱定时器
lua_tmsk3_map_bx_npc_timer = 10046		--天魔石窟三层宝箱定时器