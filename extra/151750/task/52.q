<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="52" name="#COLORCOLOR_YELLOW#[主线]#COLORCOLOR_ORANGE#了解龙城" type="1" suggest_level="1" visible="1" next_id="53">
		<script name="任务执行脚本" />
		<description>
			去逛了解一下这里吧，看你很好奇的样子。
		</description>
		<dialogue>
			<brief>去逛了解一下这里吧，看你很好奇的样子。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>现在的龙城已经没有了过去的辉煌。一场战役终结了多少条天才的宿命。龙城经历过动荡虽然已没有往日的繁华和热闹，但这座城依旧是高手喜爱常来之地。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="51" />
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
			<![CDATA[回复 #NPCLINK<STR:禁卫统领,NPCKEYNAME:土城夜战比奇城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:禁卫统领,NPCKEYNAME:土城夜战比奇城,MOVE:1>#]]>
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