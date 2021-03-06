--幸运转盘物品

--协议定义
--第一行按顺序发送所有奖品item的KeyName和数量，用逗号隔开 如：长剑[1],短剑[1],长刀[1],短刀[1],盔甲[1]
--第二行是已经抽中的奖品，按次序排列 如： 3,2,4 表示第一次抽中长刀，第二次抽中短剑...
--第三行表示是否播放特效1播放，0直接显示
--第四行表示是否有未领取奖励，1有，0没有
--行分隔符为"\n"
--
--自定义变量定义
--"幸运转盘_times"  玩家本宝箱的抽奖次数
--"幸运转盘_Sel_1"  第一次抽中的奖品序列号
--"幸运转盘_Sel_2"  第二次抽中的奖品序列号
--"幸运转盘_Sel_3"  第三次抽中的奖品序列号
--"幸运转盘_CurGroupID"     玩家本次的抽奖的分组

settings =
{
    ["每天次数"]=1,
    ["消耗元宝"]=100,
    ["等级限制"]=30,
    ["转盘次数"]=2, --不能大于转盘上的物品数量
}

AwardGroup =
{
				--Group1
    {
        --Keyname            Rate         count   notice
        {"巫山城传送石", 80, 1, ""}, 
        {"打捆绳", 800, 1, ""}, 
        {"钱袋(2万)", 400, 1, ""}, 
        {"超级聚灵珠", 80, 1, ""}, 
        {"低级转神石", 40, 1, ""}, 
        {"大型经验丹", 80, 1, ""}, 
        {"乾坤囊(10格)", 4, 1, "%s通过幸运大转盘获得了乾坤囊(10格)"}, 
        {"定位石(100次)", 8, 1, ""}, 
    },
				--Group2
    {
        {"龙城传送石", 368, 1, ""}, 
        {"打捆绳", 3680, 1, ""}, 
        {"钱袋(2万)", 1840, 1, ""}, 
        {"释灵珠", 368, 1, ""}, 
        {"低级转神石", 184, 1, ""}, 
        {"储存箱(4格)", 92, 1, ""}, 
        {"高级藏宝图", 16, 1, "%s通过幸运大转盘获得了高级藏宝图"}, 
        {"随机传送(500次)", 36, 1, ""}, 
    },
				--Group3
    {
        {"定位石", 1656, 1, ""}, 
        {"打捆绳", 16560, 1, ""}, 
        {"定位石(3次)", 5520, 1, ""}, 
        {"战神油", 1656, 1, ""}, 
        {"低级转神石", 828, 1, ""}, 
        {"高级藏宝图碎片", 360, 1, ""}, 
        {"乾坤囊(20格)", 27, 1, "%s通过幸运大转盘获得了乾坤囊(20格)"}, 
        {"定位石(100次)", 165, 1, ""}, 
    },
				--Group4
    {
        {"随机传送(50次)", 3000, 1, ""}, 
        {"打捆绳", 30000, 1, ""}, 
        {"定位石(3次)", 10000, 1, ""}, 
        {"清心丹", 3000, 1, ""}, 
        {"修复神水", 1500, 1, ""}, 
        {"中级藏宝图", 600, 1, ""}, 
        {"精炼大礼包", 0, 1, "%s通过幸运大转盘获得了精炼大礼包"}, 
        {"随机传送(500次)", 300, 1, ""}, 
    },
			    --Group5
    {
        {"祝福神水", 3000, 1, ""}, 
        {"打捆绳", 30000, 1, ""}, 
        {"坐骑经验丹", 10000, 1, ""}, 
        {"修炼石", 3000, 1, ""}, 
        {"修复神水", 1500, 1, ""}, 
        {"储存箱(5格)", 600, 1, ""}, 
        {"祝福大礼包", 0, 1, "%s通过幸运大转盘获得了祝福大礼包"}, 
        {"中级转神石", 300, 1, ""}, 
    },
			    --Group6
    {
        {"灵元珠", 3000, 1, ""}, 
        {"龙城传送石(5次)", 30000, 1, ""}, 
        {"坐骑经验丹", 10000, 1, ""}, 
        {"中级藏宝图碎片", 3000, 1, ""}, 
        {"修复神水", 1500, 1, ""}, 
        {"钱袋(50万)", 600, 1, ""}, 
        {"鉴定大礼包", 0, 1, "%s通过幸运大转盘获得了鉴定大礼包"}, 
        {"坐骑还魂丹", 300, 1, ""}, 
    },
			    --Group7
    {
        {"封印鉴定符", 8000, 1, ""}, 
        {"龙城传送石(5次)", 80000, 1, ""}, 
        {"修复神水(1次)", 20000, 1, ""}, 
        {"开光印", 8000, 1, ""}, 
        {"小喇叭(10个)", 4000, 1, ""}, 
        {"打捆绳(100个)", 800, 1, ""}, 
        {"乾坤囊(30格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(30格)"}, 
        {"中级转神石", 800, 1, ""}, 
    },
			    --Group8
    {
        {"打捆绳(10个)", 16000, 1, ""}, 
        {"龙城传送石(5次)", 160000, 1, ""}, 
        {"修复神水(1次)", 40000, 1, ""}, 
        {"套索", 16000, 1, ""}, 
        {"小喇叭(10个)", 8000, 1, ""}, 
        {"讨伐令", 1600, 1, ""}, 
        {"乾坤囊(40格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(40格)"}, 
        {"坐骑还魂丹", 1600, 1, ""}, 
    },
			    --Group9
    {
        {"巫山城传送石", 1600, 1, ""}, 
        {"龙城传送石(5次)", 16000, 1, ""}, 
        {"初级藏宝图碎片", 4000, 1, ""}, 
        {"套索", 1600, 1, ""}, 
        {"小喇叭(10个)", 800, 1, ""}, 
        {"大型经验丹", 1600, 1, ""}, 
        {"乾坤囊(40格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(40格)"}, 
        {"号角", 160, 1, ""}, 

    },
			    --Group10
    {
        {"龙城传送石", 3200, 1, ""}, 
        {"龙城传送石(5次)", 32000, 1, ""}, 
        {"初级藏宝图碎片", 8000, 1, ""}, 
        {"开光印", 3200, 1, ""}, 
        {"初级藏宝图", 1600, 1, ""}, 
        {"储存箱(4格)", 800, 1, ""}, 
        {"乾坤囊(30格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(30格)"}, 
        {"金条", 320, 1, ""}, 
    },
			    --Group11
    {
        {"定位石", 4600, 1, ""}, 
        {"聚灵珠(小)", 46000, 1, ""}, 
        {"坐骑口粮", 9200, 1, ""}, 
        {"中级藏宝图碎片", 4600, 1, ""}, 
        {"初级藏宝图", 2300, 1, ""}, 
        {"高级藏宝图碎片", 1000, 1, ""}, 
        {"鉴定大礼包", 0, 1, "%s通过幸运大转盘获得了鉴定大礼包"}, 
        {"号角", 460, 1, ""}, 
    },
			    --Group12
    {
        {"随机传送(50次)", 5000, 1, ""}, 
        {"聚灵珠(小)", 50000, 1, ""}, 
        {"坐骑口粮", 10000, 1, ""}, 
        {"修炼石", 5000, 1, ""}, 
        {"初级藏宝图", 2500, 1, ""}, 
        {"中级藏宝图", 1000, 1, ""}, 
        {"祝福大礼包", 0, 1, "%s通过幸运大转盘获得了祝福大礼包"}, 
        {"金条", 500, 1, ""}, 
    },
			    --Group13
    {
        {"祝福神水", 6000, 1, ""}, 
        {"聚灵珠(小)", 60000, 1, ""}, 
        {"钱袋(5万)", 12000, 1, ""}, 
        {"清心丹", 6000, 1, ""}, 
        {"储存箱(2格)", 3000, 1, ""}, 
        {"储存箱(5格)", 1200, 1, ""}, 
        {"精炼大礼包", 0, 1, "%s通过幸运大转盘获得了精炼大礼包"}, 
        {"逍遥游(7天)", 500, 1, ""}, 
    },
			    --Group14
    {
        {"灵元珠", 4500, 1, ""}, 
        {"聚灵珠(小)", 45000, 1, ""}, 
        {"钱袋(5万)", 9000, 1, ""}, 
        {"战神油", 4500, 1, ""}, 
        {"储存箱(2格)", 2250, 1, ""}, 
        {"钱袋(50万)", 900, 1, ""}, 
        {"乾坤囊(20格)", 75, 1, "%s通过幸运大转盘获得了乾坤囊(20格)"}, 
        {"逍遥游(500次)", 300, 1, ""}, 
    },
			    --Group15
    {
        {"封印鉴定符", 2760, 1, ""}, 
        {"聚灵珠(小)", 27600, 1, ""}, 
        {"聚灵珠(大)", 5520, 1, ""}, 
        {"释灵珠", 2760, 1, ""}, 
        {"储存箱(2格)", 1380, 1, ""}, 
        {"打捆绳(100个)", 276, 1, ""}, 
        {"高级藏宝图", 120, 1, "%s通过幸运大转盘获得了高级藏宝图"}, 
        {"逍遥游(7天)", 230, 1, ""}, 
    },
			    --Group16
    {
        {"打捆绳(10个)", 3000, 1, ""}, 
        {"经验丹", 30000, 1, ""}, 
        {"聚灵珠(大)", 6000, 1, ""}, 
        {"超级聚灵珠", 3000, 1, ""}, 
        {"钱袋(20万)", 1500, 1, ""}, 
        {"讨伐令", 300, 1, ""}, 
        {"乾坤囊(10格)", 150, 1, "%s通过幸运大转盘获得了乾坤囊(10格)"}, 
        {"逍遥游(500次)", 200, 1, ""}, 
    },
			    --Group17
    {
        {"巫山城传送石", 80, 1, ""}, 
        {"经验丹", 800, 1, ""}, 
        {"钱袋(2万)", 400, 1, ""}, 
        {"超级聚灵珠", 80, 1, ""}, 
        {"钱袋(20万)", 40, 1, ""}, 
        {"大型经验丹", 80, 1, ""}, 
        {"乾坤囊(10格)", 4, 1, "%s通过幸运大转盘获得了乾坤囊(10格)"}, 
        {"定位石(100次)", 8, 1, ""}, 
    },
			    --Group18
    {
        {"龙城传送石", 368, 1, ""}, 
        {"经验丹", 3680, 1, ""}, 
        {"钱袋(2万)", 1840, 1, ""}, 
        {"释灵珠", 368, 1, ""}, 
        {"钱袋(20万)", 184, 1, ""}, 
        {"储存箱(4格)", 92, 1, ""}, 
        {"高级藏宝图", 16, 1, "%s通过幸运大转盘获得了高级藏宝图"}, 
        {"随机传送(500次)", 36, 1, ""}, 
    },
			    --Group19
    {
        {"定位石", 2484, 1, ""}, 
        {"经验丹", 24840, 1, ""}, 
        {"定位石(3次)", 8280, 1, ""}, 
        {"战神油", 2484, 1, ""}, 
        {"逍遥游(100次)", 828, 1, ""}, 
        {"高级藏宝图碎片", 540, 1, ""}, 
        {"乾坤囊(20格)", 41, 1, "%s通过幸运大转盘获得了乾坤囊(20格)"}, 
        {"中级转神石", 248, 1, ""}, 
    },
			    --Group20
    {
        {"随机传送(50次)", 4500, 1, ""}, 
        {"经验丹", 45000, 1, ""}, 
        {"定位石(3次)", 15000, 1, ""}, 
        {"清心丹", 4500, 1, ""}, 
        {"逍遥游(100次)", 1500, 1, ""}, 
        {"中级藏宝图", 900, 1, ""}, 
        {"精炼大礼包", 0, 1, "%s通过幸运大转盘获得了精炼大礼包"}, 
        {"定位石(100次)", 450, 1, ""}, 
    },
			    --Group21
    {
        {"祝福神水", 4500, 1, ""}, 
        {"钱袋(1万)", 45000, 1, ""}, 
        {"坐骑经验丹", 15000, 1, ""}, 
        {"修炼石", 4500, 1, ""}, 
        {"逍遥游(100次)", 1500, 1, ""}, 
        {"储存箱(5格)", 900, 1, ""}, 
        {"祝福大礼包", 0, 1, "%s通过幸运大转盘获得了祝福大礼包"}, 
        {"随机传送(500次)", 450, 1, ""}, 
    },
			    --Group22
    {
        {"灵元珠", 4500, 1, ""}, 
        {"钱袋(1万)", 45000, 1, ""}, 
        {"坐骑经验丹", 15000, 1, ""}, 
        {"中级藏宝图碎片", 4500, 1, ""}, 
        {"储存箱(3格)", 1500, 1, ""}, 
        {"钱袋(50万)", 900, 1, ""}, 
        {"鉴定大礼包", 0, 1, "%s通过幸运大转盘获得了鉴定大礼包"}, 
        {"中级转神石", 450, 1, ""}, 
    },
			    --Group23
    {
        {"封印鉴定符", 12000, 1, ""}, 
        {"钱袋(1万)", 120000, 1, ""}, 
        {"修复神水(1次)", 30000, 1, ""}, 
        {"开光印", 12000, 1, ""}, 
        {"储存箱(3格)", 4000, 1, ""}, 
        {"打捆绳(100个)", 1200, 1, ""}, 
        {"乾坤囊(30格)", 120, 1, "%s通过幸运大转盘获得了乾坤囊(30格)"}, 
        {"定位石(100次)", 1200, 1, ""}, 
    },
			    --Group24
    {
        {"打捆绳(10个)", 24000, 1, ""}, 
        {"钱袋(1万)", 240000, 1, ""}, 
        {"修复神水(1次)", 60000, 1, ""}, 
        {"套索", 24000, 1, ""}, 
        {"储存箱(3格)", 8000, 1, ""}, 
        {"讨伐令", 2400, 1, ""}, 
        {"乾坤囊(40格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(40格)"}, 
        {"随机传送(500次)", 2400, 1, ""}, 
    },
			    --Group25
    {
        {"巫山城传送石", 800, 1, ""}, 
        {"钱袋(1万)", 8000, 1, ""}, 
        {"钱袋(2万)", 4000, 1, ""}, 
        {"套索", 800, 1, ""}, 
        {"低级转神石", 400, 1, ""}, 
        {"大型经验丹", 800, 1, ""}, 
        {"乾坤囊(40格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(40格)"}, 
        {"中级转神石", 80, 1, ""}, 
    },
			    --Group26
    {
        {"龙城传送石", 960, 1, ""}, 
        {"小喇叭", 4800, 1, ""}, 
        {"定位石(3次)", 3200, 1, ""}, 
        {"开光印", 960, 1, ""}, 
        {"低级转神石", 480, 1, ""}, 
        {"储存箱(4格)", 240, 1, ""}, 
        {"乾坤囊(10格)", 48, 1, "%s通过幸运大转盘获得了乾坤囊(10格)"}, 
        {"坐骑还魂丹", 96, 1, ""}, 
    },
			    --Group27
    {
        {"定位石", 5520, 1, ""}, 
        {"小喇叭", 27600, 1, ""}, 
        {"坐骑经验丹", 18400, 1, ""}, 
        {"中级藏宝图碎片", 5520, 1, ""}, 
        {"修复神水", 2760, 1, ""}, 
        {"高级藏宝图碎片", 1200, 1, ""}, 
        {"乾坤囊(30格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(30格)"}, 
        {"号角", 552, 1, ""}, 
    },
			    --Group28
    {
        {"随机传送(50次)", 8000, 1, ""}, 
        {"小喇叭", 40000, 1, ""}, 
        {"修复神水(1次)", 20000, 1, ""}, 
        {"修炼石", 8000, 1, ""}, 
        {"修复神水", 4000, 1, ""}, 
        {"中级藏宝图", 1600, 1, ""}, 
        {"鉴定大礼包", 0, 1, "%s通过幸运大转盘获得了鉴定大礼包"}, 
        {"金条", 800, 1, ""}, 
    },
			    --Group29
    {
        {"祝福神水", 8000, 1, ""}, 
        {"小喇叭", 40000, 1, ""}, 
        {"初级藏宝图碎片", 20000, 1, ""}, 
        {"清心丹", 8000, 1, ""}, 
        {"小喇叭(10个)", 4000, 1, ""}, 
        {"储存箱(5格)", 1600, 1, ""}, 
        {"祝福大礼包", 0, 1, "%s通过幸运大转盘获得了祝福大礼包"}, 
        {"坐骑还魂丹", 800, 1, ""}, 
    },
			    --Group30
    {
        {"灵元珠", 8000, 1, ""}, 
        {"小喇叭", 40000, 1, ""}, 
        {"初级藏宝图碎片", 20000, 1, ""}, 
        {"战神油", 8000, 1, ""}, 
        {"小喇叭(10个)", 4000, 1, ""}, 
        {"钱袋(50万)", 1600, 1, ""}, 
        {"精炼大礼包", 0, 1, "%s通过幸运大转盘获得了精炼大礼包"}, 
        {"号角", 800, 1, ""}, 
    },
			    --Group31
    {
        {"封印鉴定符", 12000, 1, ""}, 
        {"随机传送(10次)", 60000, 1, ""}, 
        {"坐骑口粮", 24000, 1, ""}, 
        {"释灵珠", 12000, 1, ""}, 
        {"初级藏宝图", 6000, 1, ""}, 
        {"打捆绳(100个)", 1200, 1, ""}, 
        {"乾坤囊(20格)", 200, 1, "%s通过幸运大转盘获得了乾坤囊(20格)"}, 
        {"金条", 1200, 1, ""}, 
    },
			    --Group32
    {
        {"打捆绳(10个)", 4600, 1, ""}, 
        {"随机传送(10次)", 23000, 1, ""}, 
        {"坐骑口粮", 9200, 1, ""}, 
        {"超级聚灵珠", 4600, 1, ""}, 
        {"初级藏宝图", 2300, 1, ""}, 
        {"讨伐令", 460, 1, ""}, 
        {"高级藏宝图", 200, 1, "%s通过幸运大转盘获得了高级藏宝图"}, 
        {"坐骑还魂丹", 460, 1, ""}, 
    },
			    --Group33
    {
        {"巫山城传送石", 400, 1, ""}, 
        {"随机传送(10次)", 2000, 1, ""}, 
        {"钱袋(5万)", 800, 1, ""}, 
        {"超级聚灵珠", 400, 1, ""}, 
        {"储存箱(2格)", 200, 1, ""}, 
        {"大型经验丹", 400, 1, ""}, 
        {"乾坤囊(10格)", 20, 1, "%s通过幸运大转盘获得了乾坤囊(10格)"}, 
        {"号角", 40, 1, ""}, 
    },
			    --Group34
    {
        {"龙城传送石", 1840, 1, ""}, 
        {"随机传送(10次)", 9200, 1, ""}, 
        {"钱袋(5万)", 3680, 1, ""}, 
        {"释灵珠", 1840, 1, ""}, 
        {"储存箱(2格)", 920, 1, ""}, 
        {"储存箱(4格)", 460, 1, ""}, 
        {"高级藏宝图", 80, 1, "%s通过幸运大转盘获得了高级藏宝图"}, 
        {"金条", 184, 1, ""}, 
    },
			    --Group35
    {
        {"定位石", 6624, 1, ""}, 
        {"随机传送(10次)", 33120, 1, ""}, 
        {"聚灵珠(大)", 13248, 1, ""}, 
        {"战神油", 6624, 1, ""}, 
        {"钱袋(20万)", 3312, 1, ""}, 
        {"高级藏宝图碎片", 1440, 1, ""}, 
        {"乾坤囊(20格)", 110, 1, "%s通过幸运大转盘获得了乾坤囊(20格)"}, 
        {"逍遥游(7天)", 552, 1, ""}, 
    },
			    --Group36
    {
        {"随机传送(50次)", 15000, 1, ""}, 
        {"聚灵珠(中)", 75000, 1, ""}, 
        {"聚灵珠(大)", 30000, 1, ""}, 
        {"清心丹", 15000, 1, ""}, 
        {"钱袋(20万)", 7500, 1, ""}, 
        {"中级藏宝图", 3000, 1, ""}, 
        {"精炼大礼包", 0, 1, "%s通过幸运大转盘获得了精炼大礼包"}, 
        {"逍遥游(500次)", 1000, 1, ""}, 
    },
			    --Group37
    {
        {"祝福神水", 14400, 1, ""}, 
        {"聚灵珠(中)", 72000, 1, ""}, 
        {"初级藏宝图碎片", 36000, 1, ""}, 
        {"修炼石", 14400, 1, ""}, 
        {"逍遥游(100次)", 4800, 1, ""}, 
        {"储存箱(5格)", 2880, 1, ""}, 
        {"祝福大礼包", 0, 1, "%s通过幸运大转盘获得了祝福大礼包"}, 
        {"逍遥游(7天)", 1200, 1, ""}, 
    },
			    --Group38
    {
        {"灵元珠", 22500, 1, ""}, 
        {"聚灵珠(中)", 112500, 1, ""}, 
        {"坐骑口粮", 45000, 1, ""}, 
        {"中级藏宝图碎片", 22500, 1, ""}, 
        {"逍遥游(100次)", 7500, 1, ""}, 
        {"钱袋(50万)", 4500, 1, ""}, 
        {"鉴定大礼包", 0, 1, "%s通过幸运大转盘获得了鉴定大礼包"}, 
        {"逍遥游(500次)", 1500, 1, ""}, 
    },
			    --Group39
    {
        {"封印鉴定符", 36000, 1, ""}, 
        {"聚灵珠(中)", 180000, 1, ""}, 
        {"钱袋(5万)", 72000, 1, ""}, 
        {"开光印", 36000, 1, ""}, 
        {"储存箱(3格)", 12000, 1, ""}, 
        {"打捆绳(100个)", 3600, 1, ""}, 
        {"乾坤囊(30格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(30格)"}, 
        {"逍遥游(7天)", 3000, 1, ""}, 
    },
			    --Group40
    {
        {"打捆绳(10个)", 90000, 1, ""}, 
        {"聚灵珠(中)", 450000, 1, ""}, 
        {"聚灵珠(大)", 180000, 1, ""}, 
        {"套索", 90000, 1, ""}, 
        {"储存箱(3格)", 30000, 1, ""}, 
        {"讨伐令", 9000, 1, ""}, 
        {"乾坤囊(40格)", 1, 1, "%s通过幸运大转盘获得了乾坤囊(40格)"}, 
        {"逍遥游(500次)", 6000, 1, ""}, 
    },
	--[[		    --Group41
    {
		{	"疾雷头盔",     4000,     	1,     	""},
		{	"炽焰头盔",     4000,     	1,     	""},
		{	"云扬头盔",     4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group42
    {
		{	"疾雷项链",     4000,     	1,     	""},
		{	"炽焰项链",     4000,     	1,     	""},
		{	"云扬项链",     4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group43
    {
		{	"疾雷护腕(神)", 4000,     	1,     	""},
		{	"炽焰护腕(神)", 4000,     	1,     	""},
		{	"云扬护腕(神)", 4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group44
    {
		{	"疾雷护腕(神)", 4000,     	1,     	""},
		{	"炽焰护腕(神)", 4000,     	1,     	""},
		{	"云扬护腕(神)", 4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group45
    {
		{	"疾雷护腕(圣)", 4000,     	1,     	""},
		{	"炽焰护腕(圣)", 4000,     	1,     	""},
		{	"云扬护腕(圣)", 4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group46
    {
		{	"疾雷戒指(神)", 4000,     	1,     	""},
		{	"炽焰戒指(神)", 4000,     	1,     	""},
		{	"云扬戒指(神)", 4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group47
    {
		{	"疾雷戒指(圣)", 4000,     	1,     	""},
		{	"炽焰戒指(圣)", 4000,     	1,     	""},
		{	"云扬戒指(圣)", 4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group48
    {
		{	"疾雷战靴",     4000,     	1,     	""},
		{	"炽焰魔靴",     4000,     	1,     	""},
		{	"云扬道靴",     4000,     	1,     	""},
		{	"封印鉴定符",   80000,     	1,     	""},
		{	"灵元珠",     	80000,     	1,     	""},
		{	"3倍经验卷轴",  40000,     	1,     	""},
		{	"修复神水",     16000,     	1,     	""},
		{	"龙城传送石",   80000,     	1,     	""},


    },
			    --Group49
    {
		{	"天怒头盔",     6250,     	1,     	""},
		{	"深渊头盔",     6250,     	1,     	""},
		{	"四象头盔",     6250,     	1,     	""},
		{	"封印鉴定符",   156250,     1,  ""},
		{	"灵元珠",     	156250,     1,  ""},
		{	"3倍经验卷轴",  78125,     	1,     	""},
		{	"修复神水",     31250,     	1,     	""},
		{	"龙城传送石",   156250,     1, 	""},


    },
			    --Group50
    {
		{	"天怒项链",    6250,     	1,     	""},
		{	"深渊项链",    6250,     	1,     	""},
		{	"四象项链",    6250,     	1,     	""},
		{	"封印鉴定符",  156250,     	1,     	""},
		{	"灵元珠",      156250,     	1,     	""},
		{	"3倍经验卷轴", 78125,     	1,     	""},
		{	"修复神水",    31250,     	1,     	""},
		{	"龙城传送石",  156250,     	1,     	""},


    },
			    --Group51
    {
		{	"天怒护腕(神)",6250,     	1,     	""},
		{	"深渊护腕(神)",6250,     	1,     	""},
		{	"四象护腕(神)",6250,     	1,     	""},
		{	"封印鉴定符",  156250,     	1,     	""},
		{	"灵元珠",      156250,     	1,     	""},
		{	"3倍经验卷轴", 78125,     	1,     	""},
		{	"修复神水",    31250,     	1,     	""},
		{	"龙城传送石",  156250,     	1,     	""},


    },
			    --Group52
    {
		{	"天怒护腕(圣)",6250,     	1,     	""},
		{	"深渊护腕(圣)",6250,     	1,     	""},
		{	"四象护腕(圣)",6250,     	1,     	""},
		{	"封印鉴定符",  156250,     	1,     	""},
		{	"灵元珠",      156250,     	1,     	""},
		{	"3倍经验卷轴", 78125,     	1,     	""},
		{	"修复神水",    31250,     	1,     	""},
		{	"龙城传送石",  156250,     	1,     	""},


    },
			    --Group53
    {
		{	"天怒戒指(神)", 6250,     	1,     	""},
		{	"深渊戒指(神)", 6250,     	1,     	""},
		{	"四象戒指(神)", 6250,     	1,     	""},
		{	"封印鉴定符",   156250,     1,  	""},
		{	"灵元珠",     	156250,     1,  	""},
		{	"3倍经验卷轴",  78125,     	1,     	""},
		{	"修复神水",     31250,     	1,     	""},
		{	"龙城传送石",   156250,     1,  	""},


    },
			    --Group54
    {
		{	"天怒戒指(圣)",     6250,     	1,     	""},
		{	"深渊戒指(圣)",     6250,     	1,     	""},
		{	"四象戒指(圣)",     6250,     	1,     	""},
		{	"封印鉴定符",     	156250,     1,  	""},
		{	"灵元珠",     	    156250,     1,  	""},
		{	"3倍经验卷轴",     	78125,     	1,     	""},
		{	"修复神水",     	31250,     	1,     	""},
		{	"龙城传送石",     	156250,     1,  	""},


    },
			    --Group55
    {
		{	"天怒战靴",     	6250,     	1,     	""},
		{	"深渊魔靴",     	6250,     	1,     	""},
		{	"四象道靴",     	6250,     	1,     	""},
		{	"封印鉴定符",     	156250,     1,  	""},
		{	"灵元珠",     	    156250,     1,  	""},
		{	"3倍经验卷轴",     	78125,     	1,     	""},
		{	"修复神水",     	31250,     	1,     	""},
		{	"龙城传送石",     	156250,     1,  	""},


    },
	--]]
}

function compare(a, b)
    return a < b
end

function GetRandomAward(player)
    local group = lualib:Player_GetCustomVarInt(player, "幸运转盘_CurGroupID")
    local max = 0
    local v = {}
    for i = 1, table.getn(AwardGroup[group]) do
        max = max + AwardGroup[group][i][2]
        v[i] = max
    end
    local times = lualib:Player_GetCustomVarInt(player, "幸运转盘_times")
    local r_off = 0
    local selected = {}

    for i = 1, times do
        selected[i] = lualib:Player_GetCustomVarInt(player, "幸运转盘_Sel_"..i)
        r_off = r_off + AwardGroup[group][selected[i]][2]
    end

    table.sort(selected, compare)

    local r = lualib:GenRandom(1, max - r_off)

    for i = 1,times do
        if r > v[selected[i]] - AwardGroup[group][selected[i]][2] then
            r = r + AwardGroup[group][selected[i]][2]
        end
    end

    local sel = 8
    for i = 1, table.getn(v) do
        if r <= v[i] then
            sel = i
            break
        end
    end

    return sel
end

-- showtype 1、播放动画 0、直接显示
function notify_award(player, showtype)
    local group = lualib:Player_GetCustomVarInt(player, "幸运转盘_CurGroupID")
    local times = lualib:Player_GetCustomVarInt(player, "幸运转盘_times")
    local content = ""
    local max = table.getn(AwardGroup[group])
    for j = 1, max do
        content = content..AwardGroup[group][j][1].."["..AwardGroup[group][j][3].."],"
    end
    content = content.."\n"

    local t = 0
    for i = 1,times do
        var = "幸运转盘_Sel_"..i
        local lastsel = lualib:Player_GetCustomVarInt(player, var)
        content = content..lastsel..","
    end
    content = content.."\n"..showtype

    content = content.."\n"..lualib:Player_GetCustomVarInt(player, "幸运转盘_HasAward")
    lualib:Print(content)
    lualib:ShowFormWithContent(player, "幸运转盘", content)
end

