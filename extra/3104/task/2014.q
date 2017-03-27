<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2014" name="[任务]-清剿天荒阵" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:天荒阵>##COLOREND#最近出现大量妖魔，去击败80只任意#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:怪物>##COLOREND#


#IMAGE1902100024#
     击败80只任意#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:怪物>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：400000
   奖励金币：100000（绑定金币）
   奖励元宝：800（绑定元宝）]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:天荒阵>##COLOREND#击败80只任意#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:怪物>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="80" >
					<group_hunting keyname="巨蛾" />
					<group_hunting keyname="蟒蛇1" />
					<group_hunting keyname="蛇蛟1" />
					<group_hunting keyname="蓝兽1" />
					<group_hunting keyname="沙石魔1" />
					<group_hunting keyname="散兵1" />
					<group_hunting keyname="沙石魔2" />
					<group_hunting keyname="魔兵1" />
					<group_hunting keyname="沙石魔3" />
					<group_hunting keyname="沙石魔4" />
					<group_hunting keyname="沙石魔5" />
					<group_hunting keyname="刀奴1" />
					<group_hunting keyname="刀奴2" />
					<group_hunting keyname="古怪刀客1" />
					<group_hunting keyname="鬼面刀手1" />
					<group_hunting keyname="双刀侩子手1" />
					<group_hunting keyname="风魔1" />
					<group_hunting keyname="风魔2" />
					<group_hunting keyname="风魔3" />
					<group_hunting keyname="风魔4" />
					<group_hunting keyname="风魔5" />
					<group_hunting keyname="超级散兵1" />
					<group_hunting keyname="超级沙石魔1" />
					<group_hunting keyname="超级刀奴1" />
					<group_hunting keyname="超级风魔1" />
					<group_hunting keyname="超级蛇蛟1" />
					<group_hunting keyname="超级蓝兽1" />
					<group_hunting keyname="超级魔兵1" />
					<group_hunting keyname="超级古怪刀客1" />
					<group_hunting keyname="超级鬼面刀手1" />
					<group_hunting keyname="超级双刀侩子手1" />
					<group_hunting keyname="挖肉蟒蛇1" />
					<group_hunting keyname="挖肉蛇蛟1" />
					<group_hunting keyname="挖肉蓝兽1" />
					<group_hunting keyname="挖肉散兵1" />
					<group_hunting keyname="挖肉魔兵1" />
					<group_hunting keyname="挖肉沙石魔1" />
					<group_hunting keyname="挖肉沙石魔2" />
					<group_hunting keyname="挖肉沙石魔3" />
					<group_hunting keyname="挖肉沙石魔4" />
					<group_hunting keyname="挖肉沙石魔5" />
					<group_hunting keyname="挖肉刀奴1" />
					<group_hunting keyname="挖肉刀奴2" />
					<group_hunting keyname="挖肉古怪刀客1" />
					<group_hunting keyname="挖肉鬼面刀手1" />
					<group_hunting keyname="挖肉双刀侩子手1" />
					<group_hunting keyname="挖肉风魔1" />
					<group_hunting keyname="挖肉风魔2" />
					<group_hunting keyname="挖肉风魔3" />
					<group_hunting keyname="挖肉风魔4" />
					<group_hunting keyname="挖肉风魔5" />
					<group_hunting keyname="精英散兵1" />
					<group_hunting keyname="精英沙石魔1" />
					<group_hunting keyname="精英刀奴1" />
					<group_hunting keyname="精英风魔1" />
					<group_hunting keyname="精英蟒蛇1" />
					<group_hunting keyname="精英蛇蛟1" />
					<group_hunting keyname="精英蓝兽1" />
					<group_hunting keyname="精英魔兵1" />
					<group_hunting keyname="精英古怪刀客1" />
					<group_hunting keyname="精英鬼面刀手1" />
					<group_hunting keyname="精英双刀侩子手1" />
					<group_hunting keyname="巨石傀儡" />
					<group_hunting keyname="血禅师" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="400000" bind_ingot="800" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>