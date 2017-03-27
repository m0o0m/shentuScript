<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3323" name="[主线]-来自古代的留言(3)" type="1" suggest_level="1" visible="1" next_id="3324">
		<script name="3323" />
		<description>
			这些刺客的暗语，我确实能够认出一部分。\n　　这是一名擅长伪装术的人类刺客，他伪装成为海妖，混入了海妖一族之中……。但是更多的文字我也不认识。我建议你去寻找那位已进入海角秘境的道家大师，他才是真正的知识渊博！
		</description>
		<dialogue>
			<brief>这些刺客的暗语，我确实能够认出一部分。\n　　这是一名擅长伪装术的人类刺客，他伪装成为海妖，混入了海妖一族之中……。但是更多的文字我也不认识。我建议你去寻找那位已进入海角秘境的道家大师，他才是真正的知识渊博！</brief>
			<await>还没有去寻找道家大师吗?</await>
			<finish>你又来找我了！难道不知道你已经严重地打扰了我的研究？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3322" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="誊写件"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[进入海角秘境，找#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#询问刺客暗语一事]]>
			</progressing>
			<accomplishing>
			<![CDATA[进入海角秘境，找#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#询问刺客暗语一事]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="誊写件"  n="1" bind_require="1" />
			</items>
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