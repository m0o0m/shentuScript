<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2011" name="[任务]-清剿鬼面监工" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：妖山暗穴守卫#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:妖山暗穴>##COLOREND#最近出现大量妖魔，去击败20只#COLORCOLOR_GREENG#鬼面监工#COLOREND#


#IMAGE1902100024#
     击败20只#COLORCOLOR_GREENG#鬼面监工#COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：150000
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
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:293,POSY:496,STR:妖山暗穴>##COLOREND#击败20只#COLORCOLOR_GREENG#鬼面监工#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="鬼面监工1" />
					<group_hunting keyname="鬼面监工2" />
					<group_hunting keyname="鬼面监工3" />
					<group_hunting keyname="超级鬼面监工1" />
					<group_hunting keyname="挖肉鬼面监工1" />
					<group_hunting keyname="挖肉鬼面监工2" />
					<group_hunting keyname="挖肉鬼面监工3" />
					<group_hunting keyname="精英鬼面监工1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>