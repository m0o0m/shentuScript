<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2004" name="[任务]-天天试炼" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：试炼教头#COLOREND#
 #COLORCOLOR_GREENG#交任务：试炼教头#COLOREND#

#IMAGE1902100023#
     为了增强实力，与#NPCLINK<STR:试炼教头,NPCID:30006>#对话，让他将自己传入试炼场中进行试炼，据说试炼场中的怪物很凶猛，我一定要带足药品，备好装备才好进入。


#IMAGE1902100024#
     击败20只试炼兽后回来与#NPCLINK<STR:试炼教头,NPCID:30006>#对话


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
			<![CDATA[从#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#处传入#COLORCOLOR_GREENG#试炼场#COLOREND#击败20只#COLORCOLOR_GREENG#试炼兽#COLOREND##MONSTERGROUP0#让自己变的更强]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="初级试炼兽" />
					<group_hunting keyname="中级试炼兽" />
					<group_hunting keyname="高级试炼兽" />
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