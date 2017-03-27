<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3247" name="[主线]-战斗吧，寸步不让(2)" type="1" suggest_level="1" visible="1" next_id="3248">
		<description>
			仅仅击杀天魔奴仆和天魔守卫是不够的，去消灭100只天魔妖道，这些该死的妖道，因为制作的毒药差点毁了东临城！
		</description>
		<dialogue>
			<brief>仅仅击杀天魔奴仆和天魔守卫是不够的，去消灭100只天魔妖道，这些该死的妖道，因为制作的毒药差点毁了东临城！</brief>
			<await>去消灭100只天魔妖道！</await>
			<finish>真是丑陋的恶魔的呀，应该永远消失在世界上。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3246" />
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
			<![CDATA[在天魔石窟击败100个#LINK<MAP:天魔石窟2,POSX:11,POSY:188,STR:天魔妖道,MOVE:1>##MONSTERGROUP0#后找东临城的老兵]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="天魔妖道1" />
					<group_hunting keyname="天魔妖道2" />
					<group_hunting keyname="天魔妖道说话1" />
					<group_hunting keyname="天魔妖道说话2" />
					<group_hunting keyname="天魔妖道说话3" />
					<group_hunting keyname="天魔妖道说话4" />
					<group_hunting keyname="精英天魔妖道1" />
					<group_hunting keyname="超级天魔妖道1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="7000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>