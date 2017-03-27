<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2002" name="[任务]-消除废弃矿洞怨气" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:21,POSY:175,STR:废弃矿洞>##COLOREND#的怨气已影响到了活人的神智，需要去击败20只任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:21,POSY:175,STR:僵尸>##COLOREND#来平息怨气


#IMAGE1902100024#
     击败20只任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:21,POSY:175,STR:僵尸>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：80000
   奖励金币：50000（绑定金币）
   奖励元宝：300（绑定元宝）]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="2001" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:21,POSY:175,STR:废弃矿洞>##COLOREND#击败20只任意#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞1,POSX:21,POSY:175,STR:僵尸>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="爬尸1" />
					<group_hunting keyname="腐尸1" />
					<group_hunting keyname="尸卫1" />
					<group_hunting keyname="爬尸2" />
					<group_hunting keyname="腐尸2" />
					<group_hunting keyname="尸卫2" />
					<group_hunting keyname="僵尸1" />
					<group_hunting keyname="雷暴僵尸1" />
					<group_hunting keyname="雷暴僵尸2" />
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
					<group_hunting keyname="幽冥尸王" />
					<group_hunting keyname="真尸王" />
					<group_hunting keyname="假尸王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>