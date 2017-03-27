<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1022" name="[任务]-向天机老人报告" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：元宝充值#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     
     向#NPCLINK<STR:天机老人,NPCID:25001>#报告：自己已经大致了解神途的世界

#IMAGE1902100024#
     与#NPCLINK<STR:天机老人,NPCID:25001>#对话


#IMAGE1902100025#

   奖励经验：70000经验
   奖励金币：14000金币]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1021" />
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
			<![CDATA[去找巫山城的#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:233,POSY:290,STR:天机老人>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去向#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#报告自己对神途世界已经有了大致的了解]]>
			</accomplishing>
		</tracker>
		<rewards exp="70000" gold="14000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>