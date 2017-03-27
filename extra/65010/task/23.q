<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="23" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#进宫面圣" type="1" suggest_level="1" visible="1" next_id="25">
		<script name="任务执行脚本" />
		<description>
			你这家伙愁眉苦脸做什么，上天冥冥之中早有定数，真要面临末日浩劫，你愁也无用。聪明的做法，进宫面圣，好了，你去吧，这是给你表现的机会哦。
		</description>
		<dialogue>
			<brief>你这家伙愁眉苦脸做什么，上天冥冥之中早有定数，真要面临末日浩劫，你愁也无用。聪明的做法，进宫面圣，好了，你去吧，这是给你表现的机会哦。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>先生稍等，我这就去禀告陛下。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="19" />
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