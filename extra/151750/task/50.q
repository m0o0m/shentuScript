<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="50" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#前往龙城" type="1" suggest_level="1" visible="1" next_id="51">
		<description>
			对了，你若准备好了，就去找传送员吧。他会带你前往的。
		</description>
		<dialogue>
			<brief>对了，你若准备好了，就去找传送员吧。他会带你前往的。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>这么快就过来了。看来你是很想出去闯闯了。有前途。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="49" />
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
			<![CDATA[回复 #NPCLINK<STR:传送员,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:传送员,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>