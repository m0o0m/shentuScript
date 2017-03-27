<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="77" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#个人BOSS之邪皇" type="1" suggest_level="1" visible="1" next_id="78">
		<script name="任务执行脚本" />
		<description>
			个人BOSS每天可击杀1次，邪皇63级开启。去尝试击杀它。
		</description>
		<dialogue>
			<brief>个人BOSS每天可击杀1次，邪皇63级开启。去尝试击杀它。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>击杀后，次日凌晨刷新，记得明天还可以再次挑战哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="76" />
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
			<![CDATA[击杀 #UILINK<STR:邪皇,WND:执行脚本,PARAM:TaskBoss(2)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:饰品尊者,NPCKEYNAME:首饰店老板,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="祖玛教主副本" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>