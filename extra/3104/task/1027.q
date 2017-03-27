<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1027" name="[任务]-向天机老人告别" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：试炼教头#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
    我对神途世界有了这么多的了解，这都得归功于天机老人的帮助，现在我即将闯荡神途世界，也得去向#NPCLINK<STR:天机老人,NPCID:25002>#告别，谢谢他的指引！


#IMAGE1902100024#
     与#NPCLINK<STR:天机老人,NPCID:25002>#对话


#IMAGE1902100025#

   奖励经验：40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1026" />
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
			<![CDATA[去找龙城的#COLORCOLOR_GREENG##LINK<MAP:龙城,POSX:225,POSY:223,STR:天机老人>##COLOREND#对话完成任务]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25002>##COLOREND#对话完成任务]]>
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