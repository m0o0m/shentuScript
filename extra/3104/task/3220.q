<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3220" name="[主线]-不能遵守的约定(4)" type="1" suggest_level="1" visible="1" next_id="3221">
		<description>
			很遗憾地告诉你，多多……，他是一名勇敢的战士，在我们发现天魔石窟之后，他就参加了最初对天魔石窟的侦查，但是，他再也没有回来。\n　　我想，他已经牺牲了！我们也很想确认多多最终的遭遇，但是，天魔石窟太危险了！那么，我能拜托你前往天魔石窟找回多多的遗物吗？
		</description>
		<dialogue>
			<brief>很遗憾地告诉你，多多……，他是一名勇敢的战士，在我们发现天魔石窟之后，他就参加了最初对天魔石窟的侦查，但是，他再也没有回来。\n　　我想，他已经牺牲了！我们也很想确认多多最终的遭遇，但是，天魔石窟太危险了！那么，我能拜托你前往天魔石窟找回多多的遗物吗？</brief>
			<await>前往天石窟，找回多多的遗物~</await>
			<finish>这是多多的遗信……，我们又失去了一名勇敢的战士！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3219" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="天魔守卫1" item="沾血的书信" min_num="1" max_num="1" bind_require="2" limit="1" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟击败天魔守卫，取回#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:沾血的书信,MOVE:1>##ITEMGROUP0#后找东临城的老兵]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="沾血的书信" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>