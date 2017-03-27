<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#告知饰品尊者" type="1" suggest_level="1" visible="1" next_id="21">
		<script name="任务执行脚本" />
		<description>
			小娃娃啊，还请前去告之饰品尊者，此事她最好还是知道为好。
		</description>
		<dialogue>
			<brief>小娃娃啊，还请前去告之饰品尊者，此事她最好还是知道为好。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>嗯……（听完后）……知道了，谢谢你特此前来相告。</finish>
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
			<![CDATA[回复 #NPCLINK<STR:饰品尊者,NPCKEYNAME:首饰店老板,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:饰品尊者,NPCKEYNAME:首饰店老板,MOVE:1>#]]>
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