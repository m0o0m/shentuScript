--[[ˢ�֣�
        ��������  �뾶   keyname    ����
����1     89.35     0    ��������    1
����2     83.37     0    ��������    1
����3     81.43     0    ��������    1
����4     79.49     0    ��������    1
����5     73.51     0    ��������    1
����6     67.53     0    ��������    1
����7     71.57     0    ��������    1
����8     67.57     0    ��������    1
����9     79.45     16   ����ħ��    300
����10    52.72     0    ����ħ��    1
����11    36.61     10   ����ħ��    50
����12    60.86     10   ����ħ��    50
]]

monster_mgr = { monsters = {{89, 35, 0, 1, "��������"},
                            {83, 37, 0, 1, "��������"},
                            {81, 43, 0, 1, "��������"},
                            {79, 49, 0, 1, "��������"},
                            {73, 51, 0, 1, "��������"},
                            {67, 53, 0, 1, "��������"},
                            {71, 57, 0, 1, "��������"},
                            {67, 57, 0, 1, "��������"},
                            {79, 45, 16, 300, "����ħ��"},
                            {52, 72, 0, 1, "����ħ��"},
                            {36, 61, 10, 50, "����ħ��"},
                            {60, 86, 10, 50, "����ħ��"}
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
    lualib:Print("�����µ�ͼ�����ص���")
    monster_mgr:gen_monster(map)
end

function on_map_destroy()
    
end
