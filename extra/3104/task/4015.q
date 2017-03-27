<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4015" name="[支线]-捕捉歌妖(1)" type="2" suggest_level="1" visible="1" next_id="4016">
		<description>
			我接到东临城杂货商的来信。……是的，如你所见，在战争平息的日子，我成为了一个信使……他在寻找一位真正的勇士，我相信你是一个合适的人。如果不忙的话，去找他问问吧。
		</description>
		<dialogue>
			<brief>我接到东临城杂货商的来信。……是的，如你所见，在战争平息的日子，我成为了一个信使……他在寻找一位真正的勇士，我相信你是一个合适的人。如果不忙的话，去找她问问吧。</brief>
			<await>去找找东临城的杂货商问问~</await>
			<finish>是的，我在寻找一位真正的勇士！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3310" />
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
			<![CDATA[与东临城#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>