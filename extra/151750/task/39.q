<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="39" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#食人魔变故" type="1" suggest_level="1" visible="1" next_id="40">
		<description>
			似乎最近食人魔也在蠢蠢欲动，平静的大陆看来又面临一场浩劫。该找谁去一探究竟呢？
		</description>
		<dialogue>
			<brief>似乎最近食人魔也在蠢蠢欲动，平静的大陆看来又面临一场浩劫。该找谁去一探究竟呢？</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>你要去？容我三思……</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="38" />
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
			<![CDATA[回复 #NPCLINK<STR:巫山城除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巫山城除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>