<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2009" name="[任务]-清剿妖山暗穴" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:妖山暗穴>##COLOREND#最近出现大量妖魔，去击败80只任意#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:尸奴或者监工>##COLOREND#


#IMAGE1902100024#
     击败80只任意#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:尸奴或者监工>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：250000
   奖励金币：50000（绑定金币）
   奖励元宝：500（绑定元宝）]]>
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
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:妖山暗穴>##COLOREND#击败80只任意#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:28,POSY:175,STR:尸奴或者监工>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="80" >
					<group_hunting keyname="尸奴1" />
					<group_hunting keyname="妖面监工1" />
					<group_hunting keyname="鬼面监工1" />
					<group_hunting keyname="掘铲尸奴1" />
					<group_hunting keyname="妖面监工2" />
					<group_hunting keyname="鬼面监工2" />
					<group_hunting keyname="尸奴2" />
					<group_hunting keyname="妖面监工3" />
					<group_hunting keyname="鬼面监工3" />
					<group_hunting keyname="尸奴3" />
					<group_hunting keyname="掘铲尸奴2" />
					<group_hunting keyname="掘铲尸奴3" />
					<group_hunting keyname="铁镐尸奴1" />
					<group_hunting keyname="铁镐尸奴2" />
					<group_hunting keyname="铁镐尸奴3" />
					<group_hunting keyname="铁镐尸奴4" />
					<group_hunting keyname="尸奴工头1" />
					<group_hunting keyname="尸奴工头2" />
					<group_hunting keyname="尸奴工头3" />
					<group_hunting keyname="尸奴工头4" />
					<group_hunting keyname="超级尸奴1" />
					<group_hunting keyname="超级妖面监工1" />
					<group_hunting keyname="超级鬼面监工1" />
					<group_hunting keyname="超级掘铲尸奴1" />
					<group_hunting keyname="超级铁镐尸奴1" />
					<group_hunting keyname="超级尸奴工头1" />
					<group_hunting keyname="挖肉尸奴1" />
					<group_hunting keyname="挖肉妖面监工1" />
					<group_hunting keyname="挖肉鬼面监工1" />
					<group_hunting keyname="挖肉掘铲尸奴1" />
					<group_hunting keyname="挖肉妖面监工2" />
					<group_hunting keyname="挖肉鬼面监工2" />
					<group_hunting keyname="挖肉尸奴2" />
					<group_hunting keyname="挖肉妖面监工3" />
					<group_hunting keyname="挖肉鬼面监工3" />
					<group_hunting keyname="挖肉尸奴3" />
					<group_hunting keyname="挖肉掘铲尸奴2" />
					<group_hunting keyname="挖肉掘铲尸奴3" />
					<group_hunting keyname="挖肉铁镐尸奴1" />
					<group_hunting keyname="挖肉铁镐尸奴2" />
					<group_hunting keyname="挖肉铁镐尸奴3" />
					<group_hunting keyname="挖肉铁镐尸奴4" />
					<group_hunting keyname="挖肉尸奴工头1" />
					<group_hunting keyname="挖肉尸奴工头2" />
					<group_hunting keyname="挖肉尸奴工头3" />
					<group_hunting keyname="挖肉尸奴工头4" />
					<group_hunting keyname="精英尸奴1" />
					<group_hunting keyname="精英妖面监工1" />
					<group_hunting keyname="精英鬼面监工1" />
					<group_hunting keyname="精英掘铲尸奴1" />
					<group_hunting keyname="精英铁镐尸奴1" />
					<group_hunting keyname="精英尸奴工头1" />
					<group_hunting keyname="铁齿战将1" />
					<group_hunting keyname="千年树魔" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" bind_ingot="500" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>