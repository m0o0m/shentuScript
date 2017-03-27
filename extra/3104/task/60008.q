<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60008" name="[支线]-藏宝阁之锁魔宫2" type="2" suggest_level="1" visible="1">
		<description>
			我告诉你为什么让你杀11只妖魔吧，因为你杀了11只妖魔后，自身经过妖魔之血的洗礼，让你获得了真视之力已经能伤害到锁魔宫内首领怪的真身了，现在我需要你再次进入锁魔宫消灭5个首领怪的真身
		</description>
		<dialogue>
			<brief>我告诉你为什么让你杀11只妖魔吧，因为你杀了11只妖魔后，自身经过妖魔之血的洗礼，让你获得了真视之力已经能伤害到锁魔宫内首领怪的真身了，现在我需要你再次进入锁魔宫消灭5个首领怪的真身</brief>
			<await>要杀5只真正首领怪的真身哈，不要急，你一定会遇见首领怪的真身的</await>
			<finish>好，这下锁魔宫中的魔物元气已经大伤，料它们也无法再次掀起涟漪，这是你的奖励，拿好吧，当你有空的时候希望你能再次进入锁魔宫虚弱他们的实力</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<prologues>
				<group>
					<prologue id="60007" />
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
			<![CDATA[进入#COLORCOLOR_YELLOW#锁魔宫#COLOREND#内消灭5只#COLORCOLOR_YELLOW#首领怪的真身#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到木人巷，与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人>#对话完成任务。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="锁魔绝道白猿" />
					<group_hunting keyname="锁魔白狼" />
					<group_hunting keyname="锁魔巨蛇" />
					<group_hunting keyname="锁魔骷髅王" />
					<group_hunting keyname="锁魔幽冥尸王" />
					<group_hunting keyname="锁魔牛魔将军" />
					<group_hunting keyname="锁魔千年树魔" />
					<group_hunting keyname="锁魔血禅师" />
					<group_hunting keyname="锁魔梵天僧" />
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
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="灵元珠"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>