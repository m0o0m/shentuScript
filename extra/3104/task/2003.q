<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2003" name="[任务]-消除邪魔人偶" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：封魔阵引路人#COLOREND#
 #COLORCOLOR_GREENG#交任务：封魔阵引路人#COLOREND#

#IMAGE1902100023#
     从#NPCLINK<STR:封魔阵引路人,NPCID:30022>#处进入封魔阵中击败邪恶的异位面强者召唤出来的分身阻止他恢复实力，击败掉他的分身不仅可以获得大量的经验和金钱，还能获得循环魔咒，循环魔咒可以在天机老人处刷新讨伐任务时使用


#IMAGE1902100024#
     击败20只邪魔人偶后回来与#NPCLINK<STR:封魔阵引路人,NPCID:30022>#对话


#IMAGE1902100025#

   奖励经验：50000
   奖励金币：20000（绑定金币）]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
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
			<![CDATA[进入#COLORCOLOR_GREENG#封魔阵#COLOREND#击败20只#COLORCOLOR_GREENG#邪魔人偶#COLOREND##MONSTERGROUP0#阻止异面强者变强]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:封魔阵引路人,NPCID:30022>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="邪魔人偶1" />
					<group_hunting keyname="邪魔人偶2" />
					<group_hunting keyname="邪魔人偶3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" bind_gold="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>