<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="28" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#整装待发" type="1" suggest_level="1" visible="1" next_id="29">
		<script name="任务执行脚本" />
		<description>
			话虽唠叨，希望对你有所帮助。去好好准备准备吧。
		</description>
		<dialogue>
			<brief>话虽唠叨，希望对你有所帮助。去好好准备准备吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>在这个过程中，指不定会发生什么。其中风险想必我不用再重复了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="27" />
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
		<rewards exp="150000" ingot="0" bind_ingot="500" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>