<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4003" name="[支线]-美妙的歌声(1)" type="2" suggest_level="1" visible="1" next_id="4004">
		<description>
			我接到东临城裁缝的来信。她在寻找一位敢于进入海角秘境探险的勇士，我相信你是一个合适的人。如果不忙的话，去找她问问吧。
		</description>
		<dialogue>
			<brief>我接到东临城裁缝的来信。她在寻找一位敢于进入海角秘境探险的勇士，我相信你是一个合适的人。如果不忙的话，去找她问问吧。</brief>
			<await>你应该去找找东临城的裁缝~</await>
			<finish>是的，我在寻找一位勇士的帮助！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3284" />
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
			<![CDATA[与东临城#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>