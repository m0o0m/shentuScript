<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="24" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#禀告国王" type="2" suggest_level="1" visible="1" next_id="25">
		<description>
			先生久等了，快快请进吧。
		</description>
		<dialogue>
			<brief>先生久等了，快快请进吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>你真的凭借一人之力，便消灭了那些怪物？哈哈哈哈！好，很好！果然天无绝人之路！赏，重赏！想要什么说便是！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="110110" />
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
			<![CDATA[回复 #NPCLINK<STR:巫山城国王,NPCKEYNAME:巫山城国王,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巫山城国王,NPCKEYNAME:巫山城国王,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>