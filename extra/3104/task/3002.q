<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3002" name="[任务]-探察天魔石窟" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：老兵#COLOREND#
 #COLORCOLOR_GREENG#交任务：老兵#COLOREND#

#IMAGE1902100023#
     前往#COLORCOLOR_GREENG##LINK<MAP:东临城,POSX:93,POSY:95,STR:天魔石窟>##COLOREND#，消灭10个天魔奴仆和10个天魔守卫


#IMAGE1902100024#
     与东临城的#COLORCOLOR_GREENG##NPCLINK<STR:老兵,NPCID:45>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：600000]]>
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
			<![CDATA[前往#COLORCOLOR_GREENG##LINK<MAP:东临城,POSX:93,POSY:95,STR:天魔石窟>##COLOREND#，击败10只#COLORCOLOR_GREENG#天魔奴仆#COLOREND##MONSTERGROUP0#和10只#COLORCOLOR_GREENG#天魔守卫#COLOREND##MONSTERGROUP1#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回东临城找#COLORCOLOR_GREENG##NPCLINK<STR:老兵,NPCID:45>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天魔奴仆1" />
					<group_hunting keyname="天魔奴仆2" />
					<group_hunting keyname="天魔奴仆说话1" />
					<group_hunting keyname="天魔奴仆说话2" />
					<group_hunting keyname="天魔奴仆说话3" />
					<group_hunting keyname="天魔奴仆说话4" />
					<group_hunting keyname="精英天魔奴仆1" />
					<group_hunting keyname="超级天魔奴仆1" />
				</group>
				<group n="10" >
					<group_hunting keyname="天魔守卫1" />
					<group_hunting keyname="天魔守卫2" />
					<group_hunting keyname="天魔守卫说话1" />
					<group_hunting keyname="天魔守卫说话2" />
					<group_hunting keyname="天魔守卫说话3" />
					<group_hunting keyname="天魔守卫说话4" />
					<group_hunting keyname="精英天魔守卫1" />
					<group_hunting keyname="超级天魔守卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="600000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>