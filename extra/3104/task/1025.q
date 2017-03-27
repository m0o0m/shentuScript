<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1025" name="[任务]-变的更强" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：封魔阵引路人#COLOREND#
 #COLORCOLOR_GREENG#交任务：试炼教头#COLOREND#

#IMAGE1902100023#
     我想要变的更强，但是不得其所，封魔阵引路人推荐我去找#NPCLINK<STR:试炼教头,NPCID:30006>#请教一番。


#IMAGE1902100024#
     与#NPCLINK<STR:试炼教头,NPCID:30006>#对话


#IMAGE1902100025#

   奖励经验：60000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1024" />
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
			<![CDATA[去找龙城的#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[找#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#求教变强的方法]]>
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