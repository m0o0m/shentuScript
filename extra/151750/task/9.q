<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="9" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#可怕生物" type="1" suggest_level="1" visible="1" next_id="10">
		<script name="任务执行脚本" />
		<description>
			我有一种感知，里面有一个可怕的东西，在操控着这些怪物，这样的操控力量，实在可怕。
		</description>
		<dialogue>
			<brief>我有一种感知，里面有一个可怕的东西，在操控着这些怪物，这样的操控力量，实在可怕。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>要不是酒没了，这些怪物算得了什么。哼！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="8" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:87,POSY:81,STR:骷髅卫士># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:醉酒大汉,NPCKEYNAME:矿洞醉酒大汉>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="骷髅战将" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="40000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="9000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>