<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1019" name="[任务]-师徒" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：装备大师#COLOREND#
 #COLORCOLOR_GREENG#交任务：师徒管理员#COLOREND#

#IMAGE1902100023#
     
     经装备大师指点，在游戏中找一个师傅，可以帮助自己更多的了解神途世界，于是现在就去#NPCLINK<STR:师徒管理员,NPCID:1005>#那里了解一下师徒系统

#IMAGE1902100024#
     与#NPCLINK<STR:师徒管理员,NPCID:1005>#对话了解师徒系统


#IMAGE1902100025#

   奖励经验：55000经验]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1018" />
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
			<![CDATA[去找巫山城的#COLORCOLOR_GREENG##NPCLINK<STR:师徒管理员,NPCID:1005>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[找#COLORCOLOR_GREENG##NPCLINK<STR:师徒管理员,NPCID:1005>##COLOREND#了解师徒系统]]>
			</accomplishing>
		</tracker>
		<rewards exp="55000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>