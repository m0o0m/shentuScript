<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1014" name="[任务]-去巫山城" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：仓库管理员#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     村子被怪物围困，受村人所托去巫山城找#NPCLINK<STR:天机老人,NPCID:25001>#求救

#IMAGE1902100024#
     与#NPCLINK<STR:天机老人,NPCID:25001>#对话


#IMAGE1902100025#

   奖励经验：33000]]>
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
			<![CDATA[去找巫山城的#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:232,POSY:291,STR:天机老人>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去巫山城找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#求救]]>
			</accomplishing>
		</tracker>
		<rewards exp="33000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>