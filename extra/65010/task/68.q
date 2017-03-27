<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="68" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#深入天荒" type="1" suggest_level="1" visible="1" next_id="69">
		<description>
			此入口是通往天荒的第二层，不过第二层可比这里的怪物更加凶猛。
		</description>
		<dialogue>
			<brief>此入口是通往天荒的第二层，不过第二层可比这里的怪物更加凶猛。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>呵，我以为不会有人来了。看来你是希望哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="67" />
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
			<![CDATA[回复 #NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫二层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫二层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>