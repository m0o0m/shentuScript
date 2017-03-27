<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="31" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#毒虫肆虐" type="1" suggest_level="1" visible="1" next_id="32">
		<script name="任务执行脚本" />
		<description>
			什么！你还要……进去。恩人，那些鬼东西都有很高的攻击性，务必小心呐。
		</description>
		<dialogue>
			<brief>什么！你还要……进去。恩人，那些鬼东西都有很高的攻击性，务必小心呐。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>呵！来了一个小家伙，看样子有两把刷子，能到这里绝对不简单了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="30" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞一层,POSX:51,POSY:68,STR:黑暗蠕虫,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复#NPCLINK<STR:老猎人,NPCKEYNAME:毒虫洞一层老猎人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="巨型蠕虫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>