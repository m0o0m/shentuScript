<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="59" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#突破瓶颈" type="1" suggest_level="1" visible="1" next_id="60">
		<description>
			顺便告诉你。等级是基础，可是，光有等级可是远远不够的。去找锻造大师聊聊吧。
		</description>
		<dialogue>
			<brief>顺便告诉你。等级是基础，可是，光有等级可是远远不够的。去找锻造大师聊聊吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>要变强，找我就对了。怎么样，你的武器是不是感觉已没有办法来满足你了？试试装备强化吧。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="58" />
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
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>