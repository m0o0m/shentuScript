<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="49" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#新的篇章" type="1" suggest_level="1" visible="1" next_id="50">
		<description>
			嘿嘿，虽然你的潜力很大，但要知道在这片大陆上，要知道天外有天，人上更有人。想不想去更大的天地闯荡一番？去找斗技尊者聊聊吧。
		</description>
		<dialogue>
			<brief>嘿嘿，虽然你的潜力很大，但要知道在这片大陆上，要知道天外有天，人上更有人。想不想去更大的天地闯荡一番？去找斗技尊者聊聊吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>决定了吗？现在后悔还来得及哦。外面的世界很大，也很精彩。同样也布满了坎坷，有时候坚定的信念并不可少。既然你心意已决，也该准备准备了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="48" />
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
			<![CDATA[回复 #NPCLINK<STR:斗技尊者,NPCKEYNAME:巫山城斗技尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:斗技尊者,NPCKEYNAME:巫山城斗技尊者,MOVE:1>#]]>
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