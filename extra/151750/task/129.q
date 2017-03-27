<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="129" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#蛮荒城的侵害" type="1" suggest_level="1" visible="1" next_id="130">
		<script name="任务执行脚本" />
		<description>
			一个被流放的民族后裔，以复仇为信念的怪物，直到它的出现，统一了内部的矛盾，开始了它们的扩张的步伐。
		</description>
		<dialogue>
			<brief>一个被流放的民族后裔，以复仇为信念的怪物，直到它的出现，统一了内部的矛盾，开始了它们的扩张的步伐。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>它还会再回来么？没人知道，我猜它不会死心。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="128" />
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
			<![CDATA[击杀 蛮荒教主 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:蛮荒城,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="魔龙教主" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>