-- 技能使用策略
lua_use_recover_skill = 0           --回复生命
lua_use_add_buff_skill = 1          --增益buf
lua_use_sub_buff_skill = 2          --减益buf
lua_use_single_attack_skill = 3     --单体攻击
lua_use_line_attack_skill = 4       --线型攻击
lua_use_multi_attack_skill = 5      --群体攻击
lua_use_trap_skill = 6              --陷阱类、火墙
lua_use_summon_skill = 7            --召唤类
lua_use_round_skill = 8             --攻击周围、半月、雷光
lua_use_liehuo_skill = 9            --烈火
lua_use_gongxin_skill = 10          --攻心斩
lua_use_cisha_skill = 11            --刺杀
lua_use_push_skill = 12             --蛮力冲锋
lua_use_remove_buff_skill = 13      --buff消除技能
lua_use_hide_skill = 14             --隐身类技能
lua_use_copy_skill = 15				--分身类技能

--跑位策略
lua_special_2_grid_move = 0     -- 寻找刺杀位
lua_max_distance_move = 1       -- 保持最大的攻击距离
lua_min_distance_move = 2       -- 保持最小的攻击距离
lua_help_lord_move = 3          -- 救援主人
lua_escape_move = 4             -- 逃跑

--技能失败后策略
lua_Use_Fail_Do_Abandon = 0           -- 放弃
lua_Use_Fail_Do_Move = 1              -- 跑位
lua_Use_Fail_Do_Escape = 2            -- 逃跑
lua_Use_Fail_Do_Desperately = 3       -- 拼命
lua_Use_Fail_Do_Wait = 4              -- 等待

warrior_default_skill = {
--优先级, 技能ID,      使用策略,                     跑位策略,                       位置不对时,                      无法施放时,              能放但不是最佳选择时

    --攻心斩
    --{25, 78,   lua_use_gongxin_skill,          lua_min_distance_move,      lua_Use_Fail_Do_Abandon,    lua_Use_Fail_Do_Abandon,   lua_Use_Fail_Do_Abandon},
    --半月
    {30, 78,   lua_use_round_skill,            lua_min_distance_move,      lua_Use_Fail_Do_Abandon,    lua_Use_Fail_Do_Abandon,   lua_Use_Fail_Do_Abandon},
	
    --普攻
	{100, 78,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
    {100, 77,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 76,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 75,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 74,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
}

tao_default_skill = {
    --英雄气功波
    {0, 6144,   lua_use_push_skill,             lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Desperately, 50},
    --逃跑
    {0, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 100, 1, 1},
    --群体隐身
    {1, 6093,      lua_use_hide_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Desperately},
    --隐身
    {2, 6043,      lua_use_hide_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --真气
    {3, 6133,      lua_use_add_buff_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --群疗
    {12, 6073,   lua_use_recover_skill,          lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --治疗术
    {13, 6003,   lua_use_recover_skill,          lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --驱毒术
    {14, 6121,   lua_use_remove_buff_skill,      lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --逃跑
    {3, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 80},
    --通幽
    {25, 6143,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --神兽
    {26, 6113,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --骷髅
    {27, 6033,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --天罡
    {28, 6063,   lua_use_add_buff_skill,         lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --地煞
    {29, 6053,   lua_use_add_buff_skill,         lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --群毒
    {50, 6117,   lua_use_sub_buff_skill,         lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --蛊毒
    {51, 6013,   lua_use_sub_buff_skill,         lua_max_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},
    --火符
    {52, 6023,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Desperately},
    --普攻
    {100, 25,      lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},
	
}

mage_default_skill = {
    --抗拒
    {0, 5013,   lua_use_push_skill,             lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --盾
    {1, 5103,   lua_use_add_buff_skill,         lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --逃跑
    {2, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 90},
	--分身
	{9, 114,    lua_use_copy_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --火墙
    {10, 5073,   lua_use_trap_skill,             lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --陨星灭世
    {11, 5173,   lua_use_multi_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon},
    --引经魔轰
    {12, 5163,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon, 50},
    --雷霆极光
    {13, 5093,   lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --冰咆哮
    {15, 5123,   lua_use_multi_attack_skill,     lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --极光电影
    {16, 5083,   lua_use_line_attack_skill,      lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --雷电
    {21, 5033,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --炎爆
    {22, 5063,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --冰箭
    {23, 5043,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --火球
    {24, 5003,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    
    --普攻
    {100, 25,     lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},

}

--此表不能增减项，切记
default_option = {
    --当血量低于多少时（百分比），使用金创药和回血技能（客户端控制喝药时无效）
    80,
    --当魔法低于多少时（百分比），使用魔法药（客户端控制喝药时无效）
    50,
    --当血量低于多少时，使用瞬回药（客户端控制喝药时无效）
    40,

    --当怪物距离多少格时，法师和道士开始逃跑
    3,
    
    --死亡后尸体躺在地上的时间
    20,
    
    --攻击状态的范围
    6,
    
    --守护状态的范围
    12,
    
    --操作延迟时间,使得英雄动作频率不那么快(0-100)
    0,

    --道法当血量少于这个百分比才逃跑
    100,

    --模拟网络延时,使得英雄和玩家一样会因为网络延迟打不中
    20,

    --道法多少级以上不再使用普通攻击
    20,
	--法英雄受伤多少HP招分身
	1,
}

function Init_Dummy_Skill_AI()
    lualib:Error("加载战士英雄");
    lualib:SetDummyDefaultSkillAI(1, warrior_default_skill)

    --lualib:Error("加载法师英雄");
    --lualib:SetDummyDefaultSkillAI(2, mage_default_skill)

    --lualib:Error("加载道士英雄");
    --lualib:SetDummyDefaultSkillAI(3, tao_default_skill)
    
    lualib:SetDummyDefaultAIOption(default_option)
end

function OnStateInit()
    Init_Dummy_Skill_AI()
end