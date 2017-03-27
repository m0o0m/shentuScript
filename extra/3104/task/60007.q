<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60007" name="[支线]-藏宝阁之锁魔宫" type="2" suggest_level="1" visible="1" next_id="60008">
		<description>
			魔王不死，万古长封，此锁魔宫乃无数智者同心协力，镇压魔王之所。无数年来，锁魔宫中被封印的妖魔只入不出，越来越多，已不堪重负，急需清理。勇士，请你进锁魔宫中，消灭11只妖魔，为万民造福吧。
		</description>
		<dialogue>
			<brief>魔王不死，万古长封，此锁魔宫乃无数智者同心协力，镇压魔王之所。无数年来，锁魔宫中被封印的妖魔只入不出，越来越多，已不堪重负，急需清理。勇士，请你进锁魔宫中，消灭11只妖魔，为万民造福吧。</brief>
			<await>你知道为什么让你杀66只妖魔吗，稍候你就知道了</await>
			<finish>魔者，能夺命、障碍、扰乱、破坏，除魔卫道，匡正民心，方是勇者所为。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="25" max_num="100" />
			<prologues>
				<group>
					<prologue id="3155" />
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
			<![CDATA[进入#COLORCOLOR_YELLOW#锁魔宫#COLOREND#内消灭11只#COLORCOLOR_YELLOW#任意怪物#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到木人巷，与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="11" >
					<group_hunting keyname="锁魔绝道白猿" />
					<group_hunting keyname="锁魔白狼" />
					<group_hunting keyname="锁魔巨蛇" />
					<group_hunting keyname="锁魔骷髅王" />
					<group_hunting keyname="锁魔幽冥尸王" />
					<group_hunting keyname="锁魔牛魔将军" />
					<group_hunting keyname="锁魔千年树魔" />
					<group_hunting keyname="锁魔血禅师" />
					<group_hunting keyname="锁魔梵天僧" />
					<group_hunting keyname="假锁魔绝道白猿" />
					<group_hunting keyname="假锁魔白狼" />
					<group_hunting keyname="假锁魔巨蛇" />
					<group_hunting keyname="假锁魔骷髅王" />
					<group_hunting keyname="假锁魔幽冥尸王" />
					<group_hunting keyname="假锁魔牛魔将军" />
					<group_hunting keyname="假锁魔血禅师" />
					<group_hunting keyname="假锁魔梵天僧" />
					<group_hunting keyname="锁魔超级猪" />
					<group_hunting keyname="锁魔超级牛" />
					<group_hunting keyname="锁魔超级羊" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="50000" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>