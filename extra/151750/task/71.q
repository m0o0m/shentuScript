<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="71" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#回传情报" type="1" suggest_level="1" visible="1" next_id="72">
		<script name="71q" />
		<description>
			现在我们不适合去和天荒教主起正面冲突，当务之急应该把这消息传回巫山城。此事就麻烦你了。
		</description>
		<dialogue>
			<brief>现在我们不适合去和天荒教主起正面冲突，当务之急应该把这消息传回巫山城。此事就麻烦你了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>辛苦了，感谢你把这样重要的情报给带回来。我会尽快通知大家的。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="70" />
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
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="1" />
		</auto>
	</quest>
</quests>