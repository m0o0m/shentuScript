<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10012" name="[任务]-讨伐废弃矿洞" type="2" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:废弃矿洞,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:僵尸,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败10只#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:废弃矿洞,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:僵尸,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001,MOVE:1>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：角色等级越高获得越多]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="25" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:废弃矿洞,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:20,POSY:176,STR:僵尸,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="爬尸1" />
					<group_hunting keyname="腐尸1" />
					<group_hunting keyname="尸卫1" />
					<group_hunting keyname="爬尸2" />
					<group_hunting keyname="腐尸2" />
					<group_hunting keyname="尸卫2" />
					<group_hunting keyname="僵尸1" />
					<group_hunting keyname="雷暴僵尸1" />
					<group_hunting keyname="雷暴僵尸2" />
					<group_hunting keyname="超级丧尸1" />
					<group_hunting keyname="超级僵尸1" />
					<group_hunting keyname="超级雷暴僵尸1" />
					<group_hunting keyname="超级爬尸1" />
					<group_hunting keyname="超级腐尸1" />
					<group_hunting keyname="超级尸卫1" />
					<group_hunting keyname="超级爬尸2" />
					<group_hunting keyname="超级腐尸2" />
					<group_hunting keyname="超级尸卫2" />
					<group_hunting keyname="挖肉爬尸1" />
					<group_hunting keyname="挖肉腐尸1" />
					<group_hunting keyname="挖肉尸卫1" />
					<group_hunting keyname="挖肉爬尸2" />
					<group_hunting keyname="挖肉腐尸2" />
					<group_hunting keyname="挖肉尸卫2" />
					<group_hunting keyname="挖肉僵尸1" />
					<group_hunting keyname="挖肉雷暴僵尸1" />
					<group_hunting keyname="挖肉雷暴僵尸2" />
					<group_hunting keyname="精英丧尸1" />
					<group_hunting keyname="精英僵尸1" />
					<group_hunting keyname="精英雷暴僵尸1" />
					<group_hunting keyname="精英爬尸1" />
					<group_hunting keyname="精英腐尸1" />
					<group_hunting keyname="精英尸卫1" />
					<group_hunting keyname="精英爬尸2" />
					<group_hunting keyname="精英腐尸2" />
					<group_hunting keyname="精英尸卫2" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>