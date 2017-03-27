<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2008" name="[任务]-清剿牛魔守卫" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：绝路城守卫#COLOREND#
 #COLORCOLOR_GREENG#交任务：绝路城守卫#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:293,POSY:496,STR:绝路城>##COLOREND#中充斥着牛魔大军，击败20只#COLORCOLOR_GREENG#牛魔守卫#COLOREND#，抵御牛魔大军的进攻


#IMAGE1902100024#
     击败20只#COLORCOLOR_GREENG#牛魔守卫#COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：100000
   奖励金币：50000（绑定金币）
   奖励元宝：300（绑定元宝）]]>
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
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:293,POSY:496,STR:绝路城>##COLOREND#击败20只#COLORCOLOR_GREENG#牛魔守卫#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="牛魔守卫1" />
					<group_hunting keyname="牛魔守卫2" />
					<group_hunting keyname="牛魔守卫3" />
					<group_hunting keyname="超级牛魔守卫1" />
					<group_hunting keyname="挖肉牛魔守卫1" />
					<group_hunting keyname="挖肉牛魔守卫2" />
					<group_hunting keyname="挖肉牛魔守卫3" />
					<group_hunting keyname="精英牛魔守卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" bind_ingot="300" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>