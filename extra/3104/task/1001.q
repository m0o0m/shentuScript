<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1001" name="[任务]-世界(天桑村）" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：新手引导员#COLOREND#
 #COLORCOLOR_GREENG#交任务：新手引导员#COLOREND#

#IMAGE1902100023#
     与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话，了解这个世界！


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：100]]>
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
			<![CDATA[找天桑村的#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话，了解这个世界！]]>
			</accomplishing>
		</tracker>
		<rewards exp="100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>