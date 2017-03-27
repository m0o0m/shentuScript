<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="44" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#留守接应" type="1" suggest_level="1" visible="1" next_id="10000">
		<description>
			小娃子，你进去把里面的人给带出来！我在这里做接应。格老子的！来吧畜生们，再来与老子大战三百回合！
		</description>
		<dialogue>
			<brief>小娃子，你进去把里面的人给带出来！我在这里做接应。格老子的！来吧畜生们，再来与老子大战三百回合！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>云游此处，妖孽纵横，道路封阻，情况危急啊！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="43" />
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
			<![CDATA[#LINK<MAP:猪洞一层,POSX:39,POSY:55,STR:食人毒蛾,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:游侠,NPCKEYNAME:猪洞一层游侠,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="食人毒蛾" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="40000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>