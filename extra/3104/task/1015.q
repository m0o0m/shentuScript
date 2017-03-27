<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1015" name="[任务]-了解套装" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     与#NPCLINK<STR:天机老人,NPCID:25001>#对话，了解现在该干什么

#IMAGE1902100024#
     与#NPCLINK<STR:天机老人,NPCID:25001>#对话


#IMAGE1902100025#

   奖励经验：40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1014" />
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
			<![CDATA[去找巫山城的#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:232,POSY:291,STR:天机老人>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#交流一下，了解更多东西]]>
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