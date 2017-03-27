<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5006" name="[剧情]-雪域天狼的传说（6）" type="2" suggest_level="1" visible="1" next_id="5007">
		<description>
			寻找白狼的小白狼，真是有趣啊！其实，或许你已经看到过白狼，如果你去过锁魔宫的话。\n　　就我所知，大陆存在的白狼只能在锁魔宫见到。唉，我也伤心了，我身上至少有七处伤口是那群白狼留下的，不报此仇，我可没心情说白狼的故事。去吧，进入锁魔宫消灭7只白狼。
		</description>
		<dialogue>
			<brief>寻找白狼的小白狼，真是有趣啊！其实，或许你已经看到过白狼，如果你去过锁魔宫的话。\n　　就我所知，大陆存在的白狼只能在锁魔宫见到。唉，我也伤心了，我身上至少有七处伤口是那群白狼留下的，不报此仇，我可没心情说白狼的故事。去吧，进入锁魔宫消灭7只白狼。</brief>
			<await>进入锁魔宫，消灭7只白狼。</await>
			<finish>哈哈，想要“七十随心所欲而不逾矩”，就要念头通达有仇报仇，要不心情不痛快！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5005" />
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
			<![CDATA[通过#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人>#进入木人巷，再进入#COLORCOLOR_GOLD#锁魔宫#COLOREND#，击杀7只白狼#MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到龙城，与#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="锁魔白狼" />
					<group_hunting keyname="假锁魔白狼" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2250" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>