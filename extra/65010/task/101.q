<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="101" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#将BOSS积分点出[青龙1]" type="1" suggest_level="1" visible="1" next_id="102">
		<script name="任务执行脚本" />
		<description>
			BOSS积分80级开启，可以提升角色自身的综合实力。
		</description>
		<dialogue>
			<brief>BOSS积分80级开启，可以提升角色自身的综合实力。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>BOSS积分后期可以提升恐怖的综合实力，尽情的去提升吧。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="100" />
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
			<![CDATA[点击打开：#UILINK<STR:BOSS积分,WND:执行脚本,PARAM:TaskBoss(10)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:守卫队长,NPCKEYNAME:巫山城守卫队长,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>