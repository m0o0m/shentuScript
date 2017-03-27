<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3008" name="[主线]-寻找铁匠" type="1" suggest_level="1" visible="1" next_id="3009">
		<description>
			用木棒与强大的恶魔战斗是远远不够的，去找找村里的铁匠，或许在他那里你可以找到合适的武器。
		</description>
		<dialogue>
			<brief>用木棒与强大的恶魔战斗是远远不够的，去找找村里的铁匠，或许在他那里你可以找到合适的武器。</brief>
			<await>去找村里的铁匠.</await>
			<finish>你是为寻找武器而来的吗？你可是找对人了！在我这里，你可以找到各种各样的武器哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3007" />
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
			<![CDATA[与#NPCLINK<STR:铁匠,NPCKEYNAME:新手村铁匠左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:铁匠,NPCKEYNAME:新手村铁匠左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="400" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>