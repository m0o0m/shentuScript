<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="64" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#开始反攻" type="1" suggest_level="1" visible="1" next_id="65">
		<description>
			哼，终于可以开始反攻了，我们一起清除这些碍事的家伙吧。
		</description>
		<dialogue>
			<brief>哼，终于可以开始反攻了，我们一起清除这些碍事的家伙吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>咦，终于有人过来了，太好了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="63" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙一层,POSX:95,POSY:131,STR:天荒卫士,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:胆大的路人,NPCKEYNAME:天荒一胆大的路人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="天荒卫士" />
				</group>
			</group_huntings>
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