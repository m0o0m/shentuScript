<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2017" name="[任务]-清剿沙石魔" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天荒阵守卫#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:天荒阵>##COLOREND#最近出现大量妖魔，去击败20只#COLORCOLOR_GREENG#沙石魔#COLOREND#


#IMAGE1902100024#
     击败20只#COLORCOLOR_GREENG#沙石魔#COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：250000
   奖励金币：50000（绑定金币）
   奖励元宝：300（绑定元宝）]]>
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
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:90,POSY:97,STR:天荒阵>##COLOREND#击败20只#COLORCOLOR_GREENG#沙石魔#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="沙石魔1" />
					<group_hunting keyname="沙石魔2" />
					<group_hunting keyname="沙石魔3" />
					<group_hunting keyname="沙石魔4" />
					<group_hunting keyname="沙石魔5" />
					<group_hunting keyname="超级沙石魔1" />
					<group_hunting keyname="挖肉沙石魔1" />
					<group_hunting keyname="挖肉沙石魔2" />
					<group_hunting keyname="挖肉沙石魔3" />
					<group_hunting keyname="挖肉沙石魔4" />
					<group_hunting keyname="挖肉沙石魔5" />
					<group_hunting keyname="精英沙石魔1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>