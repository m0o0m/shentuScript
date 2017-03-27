<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1111" name="[任务]-技能书" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：杂货商#COLOREND#
 #COLORCOLOR_GREENG#交任务：书商#COLOREND#

#IMAGE1902100023#
     去书店找#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:5>##COLOREND#，据说他那有上古奇书，可以找出妖气的来源，书商有各种技能书，可以让你学会各种技能！


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:5>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：12400
   奖励道具：7级技能书]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1110" />
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
			<![CDATA[找辟岭村#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:5>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去书店找#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:5>##COLOREND#打听妖气的来历]]>
			</accomplishing>
		</tracker>
		<rewards exp="12400" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>