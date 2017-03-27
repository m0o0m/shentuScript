<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4012" name="[支线]-被迷惑的男子(3)" type="2" suggest_level="1" visible="1" next_id="4013">
		<description>
			什么？你说我的母亲在苦苦等候我？不，我不离开，这里实在是太美好了，简直就是天堂，我不愿意离开这里。\n
		</description>
		<dialogue>
			<brief>什么？你说我的母亲在苦苦等候我？不，我不离开，这里实在是太美好了，简直就是天堂，我可不愿意离开这里。\n</brief>
			<await>我不离开这里，这里就是我的天堂！\n</await>
			<finish>什么？我儿他……\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4011" />
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
			<![CDATA[回东临城告诉#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1>#关于#COLORCOLOR_GREENG#被迷惑的男子#COLOREND#的情况。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回东临城告诉#NPCLINK<STR:老妇人,NPCKEYNAME:老妇人,MOVE:1>#关于#COLORCOLOR_GREENG#被迷惑的男子#COLOREND#的情况。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>