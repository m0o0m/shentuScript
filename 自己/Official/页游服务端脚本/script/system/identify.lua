local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

------------------------------------------------------------------------------
----------------------------- Core -------------------------------------------
------------------------------------------------------------------------------

--鉴定底层接口
--item: 鉴定物品 
--att_name_0: 属性0 att_value_0: 属性值0 
--att_name_1: 属性1 att_value_1: 属性值1 
--att_name_2: 属性2 att_value_2: 属性值2
function identify_item(player, item, att_name_0, att_value_0, att_name_1, att_value_1, att_name_2, att_value_2)
    if lualib:Item_GetType(player, item) ~= 1 then
        return "不是装备不可鉴定"
    end
    
    if not lualib:Equip_SetIdentifyProp(player, item, att_name_0, att_value_0, att_name_1, att_value_1, att_name_2, att_value_2) then
        return "装备鉴定失败"
    end
    
    lualib:Item_NotifyUpdate(player, item)
    lualib:OnGloryTrigger(player, lua_glory_trigger_jianding, item, 0, "鉴定", "")
        
    return ""
end

--直接鉴定一条属性
function identify_item_1(player, item, att_name_0, att_value_0)
    return identify_item(player, item, att_name_0, att_value_0, 0, 0, 0, 0)
end

--直接鉴定两条属性
function identify_item_2(player, item, att_name_0, att_value_0, att_name_1, att_value_1)
    return identify_item(player, item, att_name_0, att_value_0, att_name_1, att_value_1, 0, 0)
end

--直接鉴定三条属性
function identify_item_3(player, item, att_name_0, att_value_0, att_name_1, att_value_1, att_name_2, att_value_2)
    return identify_item(player, item, att_name_0, att_value_0, att_name_1, att_value_1, att_name_2, att_value_2)
end

------------------------------------------------------------------------------
----------------------------- Util -------------------------------------------
------------------------------------------------------------------------------
--鉴定灵符抽取属性(完全随机)
--抽取库1
--属性 值 鉴定概率

identify_lib_1 = {
                    {21, 10, 88},       --上限背包负重
                    {23, 5, 176},       --上限装备负重
                    {25, 2, 264},       --上限腕力
                    {103, 2, 352},      --背包负重百分比
                    {104, 1, 440},      --装备负重百分比
                    {3, 3, 484},        --hp上限
                    {5, 5, 572},        --mp上限
                    {44, 2, 660},       --hp回复值
                    {45, 3, 748},       --mp回复值
                    {81, 1, 836},       --hp百分比
                    {82, 2, 924},       --mp百分比
                    {106, 3, 1012},     --hp回复速度百分比
                    {107, 5, 1100},     --mp回复速度百分比
                    {6, 2, 1144},       --物防上限
                    {7, 1, 1188},       --物防下限
                    {8, 2, 1232},       --魔防上限
                    {9, 1, 1276},       --魔防下限
                    {10, 2, 1320},      --物攻上限
                    {11, 1, 1364},      --物攻下限
                    {12, 2, 1408},      --魔攻上限
                    {13, 1, 1452},      --魔攻下限
                    {14, 2, 1496},      --道术上限
                    {15, 1, 1540},      --道术下限
                    {83, 2, 1584},      --物防上限百分比
                    {84, 1, 1628},      --物防下限百分比
                    {85, 2, 1672},      --魔防上限百分比
                    {86, 1, 1716},      --魔防下限百分比
                    {87, 2, 1760},      --物攻上限百分比
                    {88, 1, 1804},      --物攻下限百分比
                    {89, 2, 1848},      --魔攻上限百分比
                    {90, 1, 1892},      --魔攻下限百分比
                    {91, 2, 1936},      --道术上限百分比
                    {92, 1, 1980},      --道术下限百分比
                    {21, 5, 2598},      --上限背包负重
                    {23, 2, 3216},      --上限装备负重
                    {25, 1, 3833},      --上限腕力
                    {103, 1, 4450},     --背包负重百分比
                    {3, 2, 4758},       --hp上限
                    {5, 3, 5375},       --mp上限
                    {44, 1, 5992},      --hp回复值
                    {45, 2, 6609},      --mp回复值
                    {82, 1, 7226},      --mp百分比
                    {106, 1, 7843},     --hp回复速度百分比
                    {107, 3, 8460},     --mp回复速度百分比
                    {6, 1, 8768},       --物防上限
                    {8, 1, 9076},       --魔防上限
                    {10, 1, 9384},      --物攻上限
                    {12, 1, 9692},      --魔攻上限
                    {14, 1, 10000},     --道术上限
}

--抽取库2
--属性 值 鉴定概率
identify_lib_2 = {
                    {21, 10, 348},      --上限背包负重
                    {23, 5, 696},       --上限装备负重
                    {25, 2, 1043},      --上限腕力
                    {103, 2, 1390},     --背包负重百分比
                    {104, 1, 1737},     --装备负重百分比
                    {3, 3, 1910},       --hp上限
                    {5, 5, 2257},       --mp上限
                    {44, 2, 2604},      --hp回复值
                    {45, 3, 2951},      --mp回复值
                    {81, 1, 3298},      --hp百分比
                    {82, 2, 3645},      --mp百分比
                    {106, 3, 3992},     --hp回复速度百分比
                    {107, 5, 4339},     --mp回复速度百分比
                    {6, 2, 4512},       --物防上限
                    {7, 1, 4685},       --物防下限
                    {8, 2, 4858},       --魔防上限
                    {9, 1, 5031},       --魔防下限
                    {10, 2, 5204},      --物攻上限
                    {11, 1, 5377},      --物攻下限
                    {12, 2, 5550},      --魔攻上限
                    {13, 1, 5723},      --魔攻下限
                    {14, 2, 5896},      --道术上限
                    {15, 1, 6069},      --道术下限
                    {83, 2, 6242},      --物防上限百分比
                    {84, 1, 6415},      --物防下限百分比
                    {85, 2, 6588},      --魔防上限百分比
                    {86, 1, 6761},      --魔防下限百分比
                    {87, 2, 6934},      --物攻上限百分比
                    {88, 1, 7107},      --物攻下限百分比
                    {89, 2, 7280},      --魔攻上限百分比
                    {90, 1, 7453},      --魔攻下限百分比
                    {91, 2, 7626},      --道术上限百分比
                    {92, 1, 7799},      --道术下限百分比
                    {16, 1, 7972},      --命中
                    {17, 1, 8145},      --闪避
                    {21, 15, 8405},     --上限背包负重
                    {23, 10, 8492},     --上限装备负重
                    {25, 5, 8579},      --上限腕力
                    {103, 3, 8666},     --背包负重百分比
                    {104, 2, 8753},     --装备负重百分比
                    {3, 5, 8782},       --hp上限
                    {5, 8, 8869},       --mp上限
                    {44, 3, 8956},      --hp回复值
                    {45, 5, 9043},      --mp回复值
                    {81, 2, 9130},      --hp百分比
                    {82, 3, 9217},      --mp百分比
                    {106, 5, 9304},     --hp回复速度百分比
                    {107, 8, 9391},     --mp回复速度百分比
                    {6, 3, 9420},       --物防上限
                    {7, 1, 9449},       --物防下限
                    {8, 3, 9478},       --魔防上限
                    {9, 1, 9507},       --魔防下限
                    {10, 3, 9536},      --物攻上限
                    {11, 1, 9565},      --物攻下限
                    {12, 3, 9594},      --魔攻上限
                    {13, 1, 9623},      --魔攻下限
                    {14, 3, 9652},      --道术上限
                    {15, 1, 9681},      --道术下限
                    {83, 3, 9710},      --物防上限百分比
                    {84, 1, 9739},      --物防下限百分比
                    {85, 3, 9768},      --魔防上限百分比
                    {86, 1, 9797},      --魔防下限百分比
                    {87, 3, 9826},      --物攻上限百分比
                    {88, 1, 9855},      --物攻下限百分比
                    {89, 3, 9884},      --魔攻上限百分比
                    {90, 1, 9913},      --魔攻下限百分比
                    {91, 3, 9942},      --道术上限百分比
                    {92, 1, 9971},      --道术下限百分比
}

--抽取库3
--属性 值 鉴定概率
identify_lib_3 = {
                    --{21, 12, 315},      --上限背包负重
                    --{23, 8, 630},       --上限装备负重
                    --{25, 4, 945},       --上限腕力
                    --{103, 3, 1260},     --背包负重百分比
                    --{104, 2, 1574},     --装备负重百分比
                    {3, 5, 1731},       --hp上限
                    {5, 8, 2045},       --mp上限
                    {44, 3, 2359},      --hp回复值
                    {45, 5, 2673},      --mp回复值
                    {81, 3, 2987},      --hp百分比
                    {82, 4, 3301},      --mp百分比
                    {106, 4, 3615},     --hp回复速度百分比
                    {107, 7, 3929},     --mp回复速度百分比
                    {6, 3, 4086},       --物防上限
                    {7, 2, 4243},       --物防下限
                    {8, 3, 4400},       --魔防上限
                    {9, 2, 4557},       --魔防下限
                    {10, 3, 4714},      --物攻上限
                    {11, 2, 4871},      --物攻下限
                    {12, 3, 5028},      --魔攻上限
                    {13, 2, 5185},      --魔攻下限
                    {14, 3, 5342},      --道术上限
                    {15, 2, 5499},      --道术下限
                    {83, 3, 5656},      --物防上限百分比
                    {84, 2, 5813},      --物防下限百分比
                    {85, 3, 5970},      --魔防上限百分比
                    {86, 2, 6127},      --魔防下限百分比
                    {87, 3, 6284},      --物攻上限百分比
                    {88, 2, 6441},      --物攻下限百分比
                    {89, 3, 6598},      --魔攻上限百分比
                    {90, 2, 6755},      --魔攻下限百分比
                    {91, 3, 6912},      --道术上限百分比
                    {92, 2, 7069},      --道术下限百分比
                    {16, 2, 7226},      --命中
                    {17, 2, 7383},      --闪避
                    {194, 1, 7697},     --魔法闪避
                    {109, 1, 7854},     --移动速度百分比
                    {110, 1, 8011},     --攻击速度百分比
                    --{21, 20, 8089},     --上限背包负重
                    --{23, 12, 8167},     --上限装备负重
                    --{25, 8, 8245},      --上限腕力
                    --{103, 5, 8323},     --背包负重百分比
                    --{104, 3, 8401},     --装备负重百分比
                    {3, 12, 8440},      --hp上限
                    {5, 20, 8518},      --mp上限
                    {44, 5, 8596},      --hp回复值
                    {45, 8, 8674},      --mp回复值
                    {81, 4, 8752},      --hp百分比
                    {82, 5, 8830},      --mp百分比
                    {106, 10, 8908},    --hp回复速度百分比
                    {107, 15, 8986},    --mp回复速度百分比
                    {6, 4, 9025},       --物防上限
                    {7, 2, 9064},       --物防下限
                    {8, 4, 9103},       --魔防上限
                    {9, 2, 9142},       --魔防下限
                    {10, 4, 9181},      --物攻上限
                    {11, 2, 9220},      --物攻下限
                    {12, 4, 9259},      --魔攻上限
                    {13, 2, 9298},      --魔攻下限
                    {14, 4, 9337},      --道术上限
                    {15, 2, 9376},      --道术下限
                    {83, 4, 9415},      --物防上限百分比
                    {84, 2, 9454},      --物防下限百分比
                    {85, 4, 9493},      --魔防上限百分比
                    {86, 2, 9532},      --魔防下限百分比
                    {87, 4, 9571},      --物攻上限百分比
                    {88, 2, 9610},      --物攻下限百分比
                    {89, 4, 9649},      --魔攻上限百分比
                    {90, 2, 9688},      --魔攻下限百分比
                    {91, 4, 9727},      --道术上限百分比
                    {92, 2, 9766},      --道术下限百分比
                    {16, 3, 9805},      --命中
                    {17, 3, 9844},      --闪避
                    {194, 3, 9922},     --魔法闪避
                    {109, 3, 9961},     --移动速度百分比
                    {110, 3, 10000},    --攻击速度百分比
}

--从某一抽取库选择一条
function select_identify_one_rnd(identify_lib)
    local r = lualib:GenRandom(1, 10000)
    for _, v in pairs(identify_lib) do
        if r <= v[3] then
            return v
        end
    end
    
    return {0, 0, 0}
end

--从某一抽取库选择一条
function identify_rnd(player, item, num)
    if num < 0 then
        return "鉴定条目数量异常, 必须大于等于0"
    end
    
    local t = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
    if num >= 1 then
        t[1] = select_identify_one_rnd(identify_lib_1)
    end
    if num >= 2 then
        t[2] = select_identify_one_rnd(identify_lib_2)
    end
    if num >= 3 then
        t[3] = select_identify_one_rnd(identify_lib_3)
    end

    return identify_item(player, item, t[1][1], t[1][2], t[2][1], t[2][2], t[3][1], t[3][2])
end
