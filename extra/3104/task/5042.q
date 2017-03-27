<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5042" name="[剧情]-魔语尊者的请求（2）" type="2" suggest_level="1" visible="1" next_id="5043">
		<description>
			冒险者，我在寻找一位有实力深入天荒阵的强者，我想你能帮上忙！我一在天荒阵前研究封印魔法的奥秘，因此，我曾见过一位名叫加布的冒险者，他已经进入天荒阵很久了，我担心他遇上了危险，因些委托你去寻找他。
		</description>
		<dialogue>
			<brief>冒险者，我在寻找一位有实力深入天荒阵的强者，我想你能帮上忙！我一在天荒阵前研究封印魔法的奥秘，因此，我曾见过一位名叫加布的冒险者，他已经进入天荒阵很久了，我担心他遇上了危险，因些委托你去寻找他。</brief>
			<await>进入天荒阵，与冒险者加布对话。</await>
			<finish>你好，与恶魔与邪恶战斗的勇士。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5041" />
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
			<![CDATA[与天荒阵五层的#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与天荒阵五层的#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>