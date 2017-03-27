<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="58" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#等级的提升" type="1" suggest_level="1" visible="1" next_id="59">
		<description>
			等级是每个人的基础，很关键哦，经验值这个东西，除魔可是给很多呢。
		</description>
		<dialogue>
			<brief>等级是每个人的基础，很关键哦，经验值这个东西，除魔可是给很多呢。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>不错，你成长的很快。有点出乎我的预料。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="57" />
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
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>