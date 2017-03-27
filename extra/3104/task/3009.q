<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3009" name="[主线]-勇气的试炼" type="1" suggest_level="1" visible="1" next_id="3010">
		<description>
			自从巫山城的矿洞被废弃之后，随着矿石越来越少，武器也显得越来越珍贵。如今，恶魔再次侵蚀天藏大陆，为了发挥武器真正的价值，只有真正的勇士才有资格获得武器。\n　　我必须给你一个考验。就在不久前，村子附近突然出现了无数妖魔和变异的怪物，现在，我们被困在村里不能轻易出去，你有勇气走出村外狩猎鹿并挖取1块肉回来吗？
		</description>
		<dialogue>
			<brief>自从巫山城的矿洞被废弃之后，我们的矿石越来越少，武器也显得越来越珍贵。如今，恶魔再次侵蚀天藏大陆，为了发挥武器真正的价值，只有真正的勇士才有资格获得武器。\n　　我必须给你一个考验。就在不久前，村子附近突然出现了无数妖魔和变异的怪物，现在，我们被困在村里不能轻易出去，你有勇气走出村外狩猎鹿并挖取1块肉回来吗？</brief>
			<await>你击败一只鹿了吗？</await>
			<finish>不错，明知道危险重重，也有勇气面对，我相信你完全可以为天藏大陆带来希望！这把武器，非常适合你现在使用。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3008" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="新手之剑"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[在村子附近击败#LINK<MAP:新手村,POSX:248,POSY:285,STR:鹿,MOVE:1>##MONSTERGROUP0#挖取1块肉#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:铁匠,NPCKEYNAME:新手村铁匠左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="肉1" />
					<group_item keyname="肉2" />
					<group_item keyname="肉3" />
					<group_item keyname="肉4" />
					<group_item keyname="肉5" />
					<group_item keyname="肉6" />
					<group_item keyname="肉7" />
					<group_item keyname="肉8" />
					<group_item keyname="肉9" />
					<group_item keyname="肉10" />
					<group_item keyname="肉11" />
					<group_item keyname="肉12" />
					<group_item keyname="肉13" />
					<group_item keyname="肉14" />
					<group_item keyname="肉15" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="600" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>