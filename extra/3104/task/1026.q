<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1026" name="[任务]-艰辛的试炼" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：试炼教头#COLOREND#
 #COLORCOLOR_GREENG#交任务：试炼教头#COLOREND#

#IMAGE1902100023#
     #NPCLINK<STR:试炼教头,NPCID:30006>#为我指引了一条变强的路，那就是进入试炼场进行试炼，但是试炼场内的怪物很强大，自身需要有一定的实力才能生存下来，每天都可以来锻炼自己一番


#IMAGE1902100024#
     与#NPCLINK<STR:试炼教头,NPCID:30006>#对话


#IMAGE1902100025#

   奖励经验：40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1025" />
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
			<![CDATA[去找龙城的#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#对话完成任务]]>
			</progressing>
			<accomplishing>
			<![CDATA[试炼教头说#COLORCOLOR_GREENG#试炼场内#COLOREND#可以获得大量的经验，与#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#对话完成任务]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>