<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3273" name="[主线]-更高层次的力量(1)" type="1" suggest_level="1" visible="1" next_id="3274">
		<description>
			彻底消灭拥有神力的恶魔，实质上意味着最终可以战胜……神灵！\n　　这是一条极端危险的道路，如果你坚定你的选择，那么，先去帮我借来几卷资料吧。我需要一些关于神灵、天藏秘史、引灵寺起源、生死轮图等方面的资料，藏宝阁守护人应该可以帮得上忙，去找他看看。
		</description>
		<dialogue>
			<brief>彻底消灭拥有神力的恶魔，实质上意味着最终可以战胜……神灵！\n　　这是一条极端危险的道路，如果你坚定你的选择，那么，先去帮我借来几卷资料吧。我需要一些关于神灵、天藏秘史、引灵寺起源、生死轮图等方面的资料，藏宝阁守护人应该可以帮得上忙，去找他看看。</brief>
			<await>去找藏宝阁守护人问问吧</await>
			<finish>我确实有一些你需要的资料，但这可不能轻易给你哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="50" max_num="100" />
			<prologues>
				<group>
					<prologue id="3272" />
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
			<![CDATA[天机老人需要翻阅大量资料，去找#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#帮忙。]]>
			</progressing>
			<accomplishing>
			<![CDATA[天机老人需要翻阅大量资料，去找#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#帮忙。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="100" integral="0" gold="10000" bind_gold="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>