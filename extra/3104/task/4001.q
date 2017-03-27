<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4001" name="[支线]-委托(1)" type="2" suggest_level="1" visible="1" next_id="4002">
		<description>
			海角秘境的发现,对所有来说都是一件前所未有的大事。海角引路人也一直在打听一个前往海角秘境的勇士，如果你打算前去冒险，不妨先去问问他。！
		</description>
		<dialogue>
			<brief>海角秘境的发现,对所有来说都是一件前所未有的大事。海角引路人也一直在打听一个前往海角秘境的勇士，如果你打算前去冒险，不妨先去问问他。！</brief>
			<await>去找海角引路人问问吧，也许可以帮上忙！</await>
			<finish>是的，是的！我在找一位前往海角秘境的勇士，你可以帮我吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[与东临城#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="44000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>