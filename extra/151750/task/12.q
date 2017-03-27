<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="12" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#另有蹊跷" type="1" suggest_level="1" visible="1" next_id="13">
		<description>
			虽然死里逃生，但是前面的去路也被怪物挡住了，希望英雄能够打通此路，也好让我等全身而退。
		</description>
		<dialogue>
			<brief>虽然死里逃生，但是前面的去路也被怪物挡住了，希望英雄能够打通此路，也好让我等全身而退。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>这些东西真的是地里面爬出来的吗？不是都死了吗？唉，这年头矿工太难当了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="11" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:125,POSY:113,STR:僵尸># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:迷路的矿工,NPCKEYNAME:矿洞迷路的矿工>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="僵尸" />
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