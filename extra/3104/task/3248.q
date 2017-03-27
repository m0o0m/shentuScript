<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3248" name="[主线]-战斗吧，寸步不让(3)" type="1" suggest_level="1" visible="1">
		<description>
			再去为我们消灭100只天魔先锋和100只天魔妖蟒吧，这些才是天魔石窟的核心力量！
		</description>
		<dialogue>
			<brief>再去为我们消灭100只天魔先锋和100只天魔妖蟒吧，这些才是天魔石窟的核心力量！</brief>
			<await>去天魔石窟消灭10只天魔先锋和10只天魔妖蟒。</await>
			<finish>你表现的非常好，这次行动给天魔石窟造成了重大的伤害，如今潜伏在四周窥视东临城的天魔已经撤退了大半，现在的东临城才有点安全感。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3247" />
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
			<![CDATA[在天魔石窟击败100个#LINK<MAP:天魔石窟3,POSX:38,POSY:38,STR:天魔先锋,MOVE:1>##MONSTERGROUP0#，100条#LINK<MAP:天魔石窟4,POSX:16,POSY:187,STR:天魔妖蟒,MOVE:1>##MONSTERGROUP1#后找东临城的老兵]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="天魔先锋1" />
					<group_hunting keyname="天魔先锋2" />
					<group_hunting keyname="天魔先锋说话1" />
					<group_hunting keyname="天魔先锋说话2" />
					<group_hunting keyname="天魔先锋说话3" />
					<group_hunting keyname="天魔先锋说话4" />
					<group_hunting keyname="精英天魔先锋1" />
					<group_hunting keyname="超级天魔先锋1" />
				</group>
				<group n="100" >
					<group_hunting keyname="天魔妖蟒1" />
					<group_hunting keyname="天魔妖蟒2" />
					<group_hunting keyname="天魔妖蟒说话1" />
					<group_hunting keyname="天魔妖蟒说话2" />
					<group_hunting keyname="天魔妖蟒说话3" />
					<group_hunting keyname="天魔妖蟒说话4" />
					<group_hunting keyname="精英天魔妖蟒1" />
					<group_hunting keyname="超级天魔妖蟒1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>