-- ����ʹ�ò���
lua_use_recover_skill = 0           --�ظ�����
lua_use_add_buff_skill = 1          --����buf
lua_use_sub_buff_skill = 2          --����buf
lua_use_single_attack_skill = 3     --���幥��
lua_use_line_attack_skill = 4       --���͹���
lua_use_multi_attack_skill = 5      --Ⱥ�幥��
lua_use_trap_skill = 6              --�����ࡢ��ǽ
lua_use_summon_skill = 7            --�ٻ���
lua_use_round_skill = 8             --������Χ�����¡��׹�
lua_use_liehuo_skill = 9            --�һ�
lua_use_gongxin_skill = 10          --����ն
lua_use_cisha_skill = 11            --��ɱ
lua_use_push_skill = 12             --�������
lua_use_remove_buff_skill = 13      --buff��������
lua_use_hide_skill = 14             --�����༼��
lua_use_copy_skill = 15				--�����༼��

--��λ����
lua_special_2_grid_move = 0     -- Ѱ�Ҵ�ɱλ
lua_max_distance_move = 1       -- �������Ĺ�������
lua_min_distance_move = 2       -- ������С�Ĺ�������
lua_help_lord_move = 3          -- ��Ԯ����
lua_escape_move = 4             -- ����

--����ʧ�ܺ����
lua_Use_Fail_Do_Abandon = 0           -- ����
lua_Use_Fail_Do_Move = 1              -- ��λ
lua_Use_Fail_Do_Escape = 2            -- ����
lua_Use_Fail_Do_Desperately = 3       -- ƴ��
lua_Use_Fail_Do_Wait = 4              -- �ȴ�

warrior_default_skill = {
--���ȼ�, ����ID,      ʹ�ò���,                     ��λ����,                       λ�ò���ʱ,                      �޷�ʩ��ʱ,              �ܷŵ��������ѡ��ʱ

    --����ն
    --{25, 78,   lua_use_gongxin_skill,          lua_min_distance_move,      lua_Use_Fail_Do_Abandon,    lua_Use_Fail_Do_Abandon,   lua_Use_Fail_Do_Abandon},
    --����
    {30, 78,   lua_use_round_skill,            lua_min_distance_move,      lua_Use_Fail_Do_Abandon,    lua_Use_Fail_Do_Abandon,   lua_Use_Fail_Do_Abandon},
	
    --�չ�
	{100, 78,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
    {100, 77,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 76,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 75,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
	{100, 74,   lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Escape,    lua_Use_Fail_Do_Desperately},
}

tao_default_skill = {
    --Ӣ��������
    {0, 6144,   lua_use_push_skill,             lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Desperately, 50},
    --����
    {0, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 100, 1, 1},
    --Ⱥ������
    {1, 6093,      lua_use_hide_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Desperately},
    --����
    {2, 6043,      lua_use_hide_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --����
    {3, 6133,      lua_use_add_buff_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --Ⱥ��
    {12, 6073,   lua_use_recover_skill,          lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --������
    {13, 6003,   lua_use_recover_skill,          lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --������
    {14, 6121,   lua_use_remove_buff_skill,      lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --����
    {3, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 80},
    --ͨ��
    {25, 6143,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --����
    {26, 6113,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --����
    {27, 6033,   lua_use_summon_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --���
    {28, 6063,   lua_use_add_buff_skill,         lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --��ɷ
    {29, 6053,   lua_use_add_buff_skill,         lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --Ⱥ��
    {50, 6117,   lua_use_sub_buff_skill,         lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --�ƶ�
    {51, 6013,   lua_use_sub_buff_skill,         lua_max_distance_move,      lua_Use_Fail_Do_Move,       lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},
    --���
    {52, 6023,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Desperately},
    --�չ�
    {100, 25,      lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},
	
}

mage_default_skill = {
    --����
    {0, 5013,   lua_use_push_skill,             lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --��
    {1, 5103,   lua_use_add_buff_skill,         lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --����
    {2, 0,      lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon, 90},
	--����
	{9, 114,    lua_use_copy_skill,           lua_help_lord_move,         lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --��ǽ
    {10, 5073,   lua_use_trap_skill,             lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --��������
    {11, 5173,   lua_use_multi_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon},
    --����ħ��
    {12, 5163,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon,        lua_Use_Fail_Do_Abandon, 50},
    --��������
    {13, 5093,   lua_use_round_skill,            lua_escape_move,            lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --������
    {15, 5123,   lua_use_multi_attack_skill,     lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --�����Ӱ
    {16, 5083,   lua_use_line_attack_skill,      lua_max_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Abandon},
    --�׵�
    {21, 5033,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --�ױ�
    {22, 5063,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --����
    {23, 5043,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    --����
    {24, 5003,   lua_use_single_attack_skill,    lua_max_distance_move,      lua_Use_Fail_Do_Move,        lua_Use_Fail_Do_Wait,        lua_Use_Fail_Do_Abandon},
    
    --�չ�
    {100, 25,     lua_use_single_attack_skill,    lua_min_distance_move,      lua_Use_Fail_Do_Abandon,     lua_Use_Fail_Do_Wait,     lua_Use_Fail_Do_Abandon},

}

--�˱���������м�
default_option = {
    --��Ѫ�����ڶ���ʱ���ٷֱȣ���ʹ�ý�ҩ�ͻ�Ѫ���ܣ��ͻ��˿��ƺ�ҩʱ��Ч��
    80,
    --��ħ�����ڶ���ʱ���ٷֱȣ���ʹ��ħ��ҩ���ͻ��˿��ƺ�ҩʱ��Ч��
    50,
    --��Ѫ�����ڶ���ʱ��ʹ��˲��ҩ���ͻ��˿��ƺ�ҩʱ��Ч��
    40,

    --�����������ٸ�ʱ����ʦ�͵�ʿ��ʼ����
    3,
    
    --������ʬ�����ڵ��ϵ�ʱ��
    20,
    
    --����״̬�ķ�Χ
    6,
    
    --�ػ�״̬�ķ�Χ
    12,
    
    --�����ӳ�ʱ��,ʹ��Ӣ�۶���Ƶ�ʲ���ô��(0-100)
    0,

    --������Ѫ����������ٷֱȲ�����
    100,

    --ģ��������ʱ,ʹ��Ӣ�ۺ����һ������Ϊ�����ӳٴ���
    20,

    --�������ټ����ϲ���ʹ����ͨ����
    20,
	--��Ӣ�����˶���HP�з���
	1,
}

function Init_Dummy_Skill_AI()
    lualib:Error("����սʿӢ��");
    lualib:SetDummyDefaultSkillAI(1, warrior_default_skill)

    --lualib:Error("���ط�ʦӢ��");
    --lualib:SetDummyDefaultSkillAI(2, mage_default_skill)

    --lualib:Error("���ص�ʿӢ��");
    --lualib:SetDummyDefaultSkillAI(3, tao_default_skill)
    
    lualib:SetDummyDefaultAIOption(default_option)
end

function OnStateInit()
    Init_Dummy_Skill_AI()
end