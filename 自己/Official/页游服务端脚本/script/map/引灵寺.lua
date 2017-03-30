--[[刷怪：
        中心坐标  半径   keyname    数量
区域1     89.35     0    噬灵妖花    1
区域2     83.37     0    噬灵妖花    1
区域3     81.43     0    噬灵妖花    1
区域4     79.49     0    噬灵妖花    1
区域5     73.51     0    噬灵妖花    1
区域6     67.53     0    噬灵妖花    1
区域7     71.57     0    噬灵妖花    1
区域8     67.57     0    噬灵妖花    1
区域9     79.45     16   噬灵魔花    300
区域10    52.72     0    噬灵魔神    1
区域11    36.61     10   噬灵魔花    50
区域12    60.86     10   噬灵魔花    50
]]

monster_mgr = { monsters = {{89, 35, 0, 1, "噬灵妖花"},
                            {83, 37, 0, 1, "噬灵妖花"},
                            {81, 43, 0, 1, "噬灵妖花"},
                            {79, 49, 0, 1, "噬灵妖花"},
                            {73, 51, 0, 1, "噬灵妖花"},
                            {67, 53, 0, 1, "噬灵妖花"},
                            {71, 57, 0, 1, "噬灵妖花"},
                            {67, 57, 0, 1, "噬灵妖花"},
                            {79, 45, 16, 300, "噬灵魔花"},
                            {52, 72, 0, 1, "噬灵魔神"},
                            {36, 61, 10, 50, "噬灵魔花"},
                            {60, 86, 10, 50, "噬灵魔花"}
                           }
                }

function monster_mgr:gen_monster(map)
    if self.monsters == nil then end
    for i = 1, #self.monsters do
        lualib:Map_GenMonster(map, 
                              self.monsters[i][1], 
                              self.monsters[i][2], 
                              self.monsters[i][3], 
                              3, 
                              self.monsters[i][5], 
                              self.monsters[i][4], 
                              false)
    end
end


function on_map_create(map)
    lualib:Print("引灵寺地图建创回调！")
    monster_mgr:gen_monster(map)
end

function on_map_destroy()
    
end
