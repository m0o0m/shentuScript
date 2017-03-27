<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1012" name="[任务]-技能实战" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：书店老板#COLOREND#
 #COLORCOLOR_GREENG#交任务：书店老板#COLOREND#

#IMAGE1902100023#
     经常使用技能能增加熟练度，技能等级与人物等级有关系。


#IMAGE1902100024#
     击败5个#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:465,POSY:620,STR:白茅人>##COLOREND#后回来找#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:14>##COLOREND#


#IMAGE1902100025#

   奖励经验：20000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1011" />
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
			<![CDATA[去村外击败5只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:465,POSY:620,STR:白茅人>##COLOREND##MONSTERGROUP0#后再回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:书商,NPCID:14>##COLOREND#报告]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="白茅人" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>