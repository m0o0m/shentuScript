<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3047" name="[主线]-响应龙城号召" type="1" suggest_level="1" visible="1" next_id="3100">
		<script name="3047" />
		<description>
			响应龙城号召，去龙城寻找天机老人！
		</description>
		<dialogue>
			<brief>你拯救了巫山城！这一次巫山城幸好有你呀，要不然人类将遭遇又一场滔天的劫难！\n　　你的成长真是令人欣慰，你已经完全可以前往龙城，参与消灭恶魔的战斗了！那么，我便在龙城等你吧！</brief>
			<await>去龙城寻找天机老人！</await>
			<finish>很高兴在龙城见到你！虽然局势艰难，但时无危局，何必英雄？困境，将成为你成长的沃土！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3046" />
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
			<![CDATA[与#NPCLINK<STR:龙城的天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:龙城的天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="镇魂笛"  n="6" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>