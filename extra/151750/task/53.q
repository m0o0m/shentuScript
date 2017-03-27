<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="53" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#尚武之城" type="1" suggest_level="1" visible="1" next_id="54">
		<script name="任务执行脚本" />
		<description>
			往事不堪回首……故人啊……唉……
		</description>
		<dialogue>
			<brief>往事不堪回首……故人啊……唉……</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>龙城人人崇尚武力，这在一般的城市里可不多见。每天人与人之间的对弈也是很常见。在对弈中不断的成长，在这里带足丹药可是很有必要的哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="52" />
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
			<![CDATA[回复 #NPCLINK<STR:谁与争锋,NPCKEYNAME:土城谁与争锋,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:谁与争锋,NPCKEYNAME:土城谁与争锋,MOVE:1>#]]>
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