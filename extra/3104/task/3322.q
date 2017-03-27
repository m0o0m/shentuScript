<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3322" name="[主线]-来自古代的留言(2)" type="1" suggest_level="1" visible="1" next_id="3323">
		<description>
			这些刺客所使用的暗语，随着刺客职业的消失而消失了，现在懂得这些文字的……或许巫山城的师徒管理员可能会认识。他四方游历，博闻广记，去找他问问吧。
		</description>
		<dialogue>
			<brief>这些刺客所使用的暗语，随着刺客职业的消失而消失了，现在懂得这些文字的……或许巫山城的师徒管理员可能会认识。他四方游历，博闻广记，去找他问问吧。</brief>
			<await>去找巫山城的师徒管理员询问一番吧</await>
			<finish>能够再次见到你，真是太高兴了。现在，你已经成为名扬天下的英雄了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3321" />
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
			<![CDATA[到达巫山城，与#NPCLINK<STR:师徒管理员,NPCKEYNAME:师徒管理员,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[到达巫山城，与#NPCLINK<STR:师徒管理员,NPCKEYNAME:师徒管理员,MOVE:1>#对话]]>
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
		<rewards exp="255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>