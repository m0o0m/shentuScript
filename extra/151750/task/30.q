<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="30" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初入洞穴" type="1" suggest_level="1" visible="1" next_id="31">
		<description>
			这些东西真烦，杀掉一只又来一只，仿佛没有穷尽。我需要恢复一下，剩下的交给你了。
		</description>
		<dialogue>
			<brief>这些东西真烦，杀掉一只又来一只，仿佛没有穷尽。我需要恢复一下，剩下的交给你了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>英雄……恩人！恩人！带我出去吧，这里不是人待的地方，太可怕了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="29" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞一层,POSX:80,POSY:81,STR:蜈蚣,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:流浪汉,NPCKEYNAME:毒虫洞一层流浪汉,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="蜈蚣" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>