<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1023" name="[任务]-封魔阵" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：封魔阵引路人#COLOREND#

#IMAGE1902100023#
     
     听天机老人说龙城有很多江湖人士聚集，我这就去看一下，他推荐我先去找#NPCLINK<STR:封魔阵引路人,NPCID:30022>#问问,可以通过广场中心的老兵快速到达龙城。

#IMAGE1902100024#
     与#NPCLINK<STR:封魔阵引路人,NPCID:30022>#对话


#IMAGE1902100025#

   奖励经验：60000经验]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="2002" />
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
			<![CDATA[去找龙城的#COLORCOLOR_GREENG##NPCLINK<STR:封魔阵引路人,NPCID:30022>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城找#COLORCOLOR_GREENG##NPCLINK<STR:封魔阵引路人,NPCID:30022>##COLOREND#问问]]>
			</accomplishing>
		</tracker>
		<rewards exp="60000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>