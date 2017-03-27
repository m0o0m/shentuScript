<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3001" name="[任务]-押镖" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：龙城军需官#COLOREND#
 #COLORCOLOR_GREENG#交任务：东临城军需官#COLOREND#

#IMAGE1902100023#
     找#COLORCOLOR_GREENG#龙城#COLOREND#的#COLORCOLOR_GREENG##NPCLINK<STR:军需官,NPCID:30009>##COLOREND#对话


#IMAGE1902100024#
     与#COLORCOLOR_GREENG#东临城#COLOREND#的#COLORCOLOR_GREENG##NPCLINK<STR:军需官,NPCID:30010>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：200000]]>
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
			<![CDATA[找#COLORCOLOR_GREENG#龙城#COLOREND#的#COLORCOLOR_GREENG##NPCLINK<STR:军需官,NPCID:30009>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#COLORCOLOR_GREENG#东临城#COLOREND#的#COLORCOLOR_GREENG##NPCLINK<STR:军需官,NPCID:30010>##COLOREND#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="200000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>