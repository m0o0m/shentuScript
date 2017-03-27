<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3222" name="[主线]-不能遵守的约定(6)" type="1" suggest_level="1" visible="1" next_id="3223">
		<description>
			再次麻烦你真的很抱歉，但是，被恶魔吃掉的话，灵魂将停留在恶魔的体内，永远得不到安宁，我请求你去消灭它们吧。多多需要安静地休息。
		</description>
		<dialogue>
			<brief>再次麻烦你真的很抱歉，但是，被恶魔吃掉的话，灵魂将停留在恶魔的体内，永远得不到安宁，我请求你去消灭它们吧。多多需要安静地休息。</brief>
			<await>在天魔石窟消灭50个恶魔可以释放多多的灵魂！</await>
			<finish>多多……你失约了哦，虽然是第一次，不过，也很难让人原谅呢。不过，你想休息的话，那就安静地睡吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3221" />
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
			<![CDATA[在天魔石窟击败50只#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:任意怪物,MOVE:1>##MONSTERGROUP0#后找巫山城的裁缝]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:裁缝,NPCKEYNAME:巫山城裁缝,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="天魔奴仆1" />
					<group_hunting keyname="天魔奴仆2" />
					<group_hunting keyname="天魔守卫1" />
					<group_hunting keyname="天魔守卫2" />
					<group_hunting keyname="天魔奴仆说话1" />
					<group_hunting keyname="天魔奴仆说话2" />
					<group_hunting keyname="天魔奴仆说话3" />
					<group_hunting keyname="天魔奴仆说话4" />
					<group_hunting keyname="天魔守卫说话1" />
					<group_hunting keyname="天魔守卫说话2" />
					<group_hunting keyname="天魔守卫说话3" />
					<group_hunting keyname="天魔守卫说话4" />
					<group_hunting keyname="超级天魔奴仆1" />
					<group_hunting keyname="超级天魔守卫1" />
					<group_hunting keyname="精英天魔奴仆1" />
					<group_hunting keyname="精英天魔守卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="640000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>