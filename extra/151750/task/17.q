<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="17" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#告知队长" type="1" suggest_level="1" visible="1" next_id="18">
		<script name="任务执行脚本" />
		<description>
			对了，小孩儿，别急着走啊！还有一事相托呢，把你遇到的事情跟我们队长去说说吧，他最近日子可不好过。就当行善嘛，队长就在城门内侧，进去便能瞧见。
		</description>
		<dialogue>
			<brief>对了，小孩儿，别急着走啊！还有一事相托呢，把你遇到的事情跟我们队长去说说吧，他最近日子可不好过。就当行善嘛，队长就在城门内侧，进去便能瞧见。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>哎哟，可算来一个人了！发生什么事儿了？和我仔细说说。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="16" />
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
			<![CDATA[回复 #NPCLINK<STR:守卫队长,NPCKEYNAME:巫山城守卫队长,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:守卫队长,NPCKEYNAME:巫山城守卫队长,MOVE:1>#]]>
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