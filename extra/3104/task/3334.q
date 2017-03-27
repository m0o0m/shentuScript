<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3334" name="[主线]-消弥水之力的方法(4)" type="1" suggest_level="1" visible="1" next_id="3335">
		<description>
			神秘老者制造的法宝，是五面五行阵旗，这是我们布置阵法的关键。等他制造好之后，你去取来，直接前往海角秘境即可。
		</description>
		<dialogue>
			<brief>神秘老者制造的法宝，是五面五行阵旗，这是我们布置阵法的关键。等他制造好之后，你去取来，直接前往海角秘境即可。</brief>
			<await>去找道家大师,取得五面阵旗~</await>
			<finish>你小子跑得贼快贼快的，我制造的阵旗还差点手尾呢。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3333" />
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
			<![CDATA[与沉船一层的#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#对话,询问对方制作阵旗进展]]>
			</progressing>
			<accomplishing>
			<![CDATA[与沉船一层的#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#对话,询问对方制作阵旗进展]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="285000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>