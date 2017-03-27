<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5012" name="[支线]-镇魔殿的危机（2）" type="2" suggest_level="1" visible="1">
		<description>
			镇魔殿封锁的空间，正是当年恶魔入侵天藏大陆的空间通道之一。如今，恶魔的力量经过长时间的积蓄，又开始蠢蠢欲动，它们不停地冲击着镇魔殿的封印，你来了正好出力。帮我进去消灭10只红面牛魔，10只黑面牛魔吧。
		</description>
		<dialogue>
			<brief>镇魔殿封锁的空间，正是当年恶魔入侵天藏大陆的空间通道之一。如今，恶魔的力量经过长时间的积蓄，又开始蠢蠢欲动，它们不停地冲击着镇魔殿的封印，你来了正好出力。帮我进去消灭10只红面牛魔，10只黑面牛魔吧。</brief>
			<await>进入镇魔殿消灭10只红面牛魔，10只黑面牛魔，不多吧？</await>
			<finish>不错，这一批怪物被消灭，压力果然轻了很多呀！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="0" max_num="200" />
			<prologues>
				<group>
					<prologue id="5011" />
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
			<![CDATA[进入镇魔殿，消灭10只红面牛魔#MONSTERGROUP0#，10只黑面牛魔#MONSTERGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:镇魔殿传送人,NPCKEYNAME:镇魔殿传送人>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="镇魔红面牛魔1" />
					<group_hunting keyname="镇魔红面牛魔2" />
					<group_hunting keyname="镇魔红面牛魔3" />
					<group_hunting keyname="镇魔红面牛魔4" />
					<group_hunting keyname="镇魔红面牛魔5" />
					<group_hunting keyname="镇魔红面牛魔6" />
					<group_hunting keyname="镇魔红面牛魔7" />
					<group_hunting keyname="镇魔红面牛魔8" />
					<group_hunting keyname="镇魔红面牛魔9" />
					<group_hunting keyname="镇魔红面牛魔10" />
					<group_hunting keyname="镇魔红面牛魔11" />
				</group>
				<group n="10" >
					<group_hunting keyname="镇魔黑面牛魔1" />
					<group_hunting keyname="镇魔黑面牛魔2" />
					<group_hunting keyname="镇魔黑面牛魔3" />
					<group_hunting keyname="镇魔黑面牛魔4" />
					<group_hunting keyname="镇魔黑面牛魔5" />
					<group_hunting keyname="镇魔黑面牛魔6" />
					<group_hunting keyname="镇魔黑面牛魔7" />
					<group_hunting keyname="镇魔黑面牛魔8" />
					<group_hunting keyname="镇魔黑面牛魔9" />
					<group_hunting keyname="镇魔黑面牛魔10" />
					<group_hunting keyname="镇魔黑面牛魔11" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="22500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>