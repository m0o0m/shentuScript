<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5041" name="[剧情]-魔语尊者的请求（1）" type="2" suggest_level="1" visible="1" next_id="5042">
		<description>
			冒险者，你的实力很强大，正好魔语尊者正在寻找一位有实力进入天荒阵的家伙，我想你能帮上忙。去找魔语尊者了解情况吧！
		</description>
		<dialogue>
			<brief>冒险者，你的实力很强大，正好魔语尊者正在寻找一位有实力进入天荒阵的家伙，我想你能帮上忙。去找魔语尊者了解情况吧！</brief>
			<await>与魔语尊者对话。</await>
			<finish>冒险者请留步！你即将进入的是危险的天荒阵。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5026" />
				</group>
				<group>
					<prologue id="3138" />
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
			<![CDATA[与#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#对话。]]>
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