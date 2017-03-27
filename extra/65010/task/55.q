<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="55" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#前往神歌城" type="1" suggest_level="1" visible="1" next_id="56">
		<script name="任务执行脚本" />
		<description>
			神歌城就在土城的不远处，去瞧瞧吧。
		</description>
		<dialogue>
			<brief>神歌城就在土城的不远处，去瞧瞧吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>想当年，我也参与过神歌城的争夺。大陆顶尖的势力为了争夺此城，精锐尽出。战况异常激烈。回想起来，现在的我还有些激动呢。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="54" />
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
			<![CDATA[回复 #NPCLINK<STR:土城戍卫,NPCKEYNAME:土城戍卫,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:土城戍卫,NPCKEYNAME:土城戍卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>