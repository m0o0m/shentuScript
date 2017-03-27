<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1003" name="[任务]-操作" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：新手引导员#COLOREND#
 #COLORCOLOR_GREENG#交任务：新手引导员#COLOREND#

#IMAGE1902100023#
     与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话，继续学习基本的操作


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：400]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1002" />
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
			<![CDATA[找天桑村的#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[找#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1002>##COLOREND#，继续学习基本的操作]]>
			</accomplishing>
		</tracker>
		<rewards exp="400" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>