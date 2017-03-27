<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3246" name="[主线]-战斗吧，寸步不让(1)" type="1" suggest_level="1" visible="1" next_id="3247">
		<description>
			东临城正在加快建设，但是，恶魔正在策划下一次的袭击。上一次的投毒事件，给了我们深刻的教训，我们不能有一刻的懈怠，为了缓解东临城的局势，给天魔石窟造成压力，勇士，战斗吧！
		</description>
		<dialogue>
			<brief>东临城正在加快建设，但是，恶魔正在策划下一次的袭击。上一次的投毒事件，给了我们深刻的教训，我们不能有一刻的懈怠，为了缓解东临城的局势，给天魔石窟造成压力，勇士，战斗吧！</brief>
			<await>杀死100只天魔奴仆和100只天魔守卫，给予天魔石窟真正的伤害！</await>
			<finish>很好，你的行动永远如此快速有效，难怪可以多次挽救局势。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3245" />
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
			<![CDATA[在天魔石窟击败100个#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:天魔守卫,MOVE:1>##MONSTERGROUP0#，100个#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:天魔奴仆,MOVE:1>##MONSTERGROUP1#后找东临城的老兵]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="天魔奴仆1" />
					<group_hunting keyname="天魔奴仆2" />
					<group_hunting keyname="天魔奴仆说话1" />
					<group_hunting keyname="天魔奴仆说话2" />
					<group_hunting keyname="天魔奴仆说话3" />
					<group_hunting keyname="天魔奴仆说话4" />
					<group_hunting keyname="精英天魔奴仆1" />
					<group_hunting keyname="超级天魔奴仆1" />
				</group>
				<group n="100" >
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
		<rewards exp="4000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>