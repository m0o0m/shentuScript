<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1104" name="[任务]-战斗实践" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：新手引导员#COLOREND#
 #COLORCOLOR_GREENG#交任务：新手引导员#COLOREND#

#IMAGE1902100023#
     在村子附近击败3只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:202,POSY:689,STR:鸡>##COLOREND#，查看家禽为何突然变得暴戾，然后回来找我。若在操作上还有不明白的对方，可在各个城市里找到我的化身进行了解。


#IMAGE1902100024#
     击败了3只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:202,POSY:689,STR:鸡>##COLOREND#后回来与#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：500]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1103" />
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
			<![CDATA[在村子附近击败3只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:202,POSY:689,STR:鸡>##COLOREND##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:新手引导员,NPCID:1001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>