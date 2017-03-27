<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20004" name="[任务]-讨伐废弃矿洞" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:废弃矿洞>##COLOREND#击败50只#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:僵尸>##COLOREND#后回来找我


#IMAGE1902100024#
     击败50只#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:废弃矿洞>##COLOREND#的#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:僵尸>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：任务品阶越高获得经验越多]]>
		</description>
		<dialogue>
			<brief>2</brief>
			<await>2</await>
			<finish>2</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="40" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:废弃矿洞>##COLOREND#击败50只#COLORCOLOR_GREENG##LINK<MAP:废弃矿洞,POSX:113,POSY:149,STR:僵尸>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="尸卫2" />
					<group_hunting keyname="爬尸2" />
					<group_hunting keyname="僵尸1" />
					<group_hunting keyname="腐尸2" />
					<group_hunting keyname="雷暴僵尸2" />
					<group_hunting keyname="幽冥尸王" />
					<group_hunting keyname="挖肉爬尸1" />
					<group_hunting keyname="精英爬尸1" />
					<group_hunting keyname="腐尸1" />
					<group_hunting keyname="超级腐尸1" />
					<group_hunting keyname="雷暴僵尸1" />
					<group_hunting keyname="精英尸卫1" />
					<group_hunting keyname="挖肉雷暴僵尸1" />
					<group_hunting keyname="超级雷暴僵尸1" />
					<group_hunting keyname="尸卫1" />
					<group_hunting keyname="墓地蛆虫1" />
					<group_hunting keyname="爬尸1" />
					<group_hunting keyname="超级爬尸1" />
					<group_hunting keyname="挖肉腐尸1" />
					<group_hunting keyname="精英腐尸1" />
					<group_hunting keyname="精英雷暴僵尸1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>