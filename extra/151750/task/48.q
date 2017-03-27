<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="48" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#除魔降妖" type="1" suggest_level="1" visible="1" next_id="49">
		<script name="48_reward" />
		<description>
			除魔使节似乎一直在找你，应该有什么事情，你去他那里一趟吧。
		</description>
		<dialogue>
			<brief>除魔使节似乎一直在找你，应该有什么事情，你去他那里一趟吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>啧啧啧，不得了不得了，你的成长让我很惊讶哦，果然当初没看错人。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="47" />
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
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
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
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>