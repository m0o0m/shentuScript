<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="8" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#深入探索" type="1" suggest_level="1" visible="1" next_id="9">
		<script name="任务执行脚本" />
		<description>
			前面好大动静，英雄可要一路小心啊。
		</description>
		<dialogue>
			<brief>前面好大动静，英雄可要一路小心啊。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>这些怪物，居然还会偷袭，这股邪恶的力量越来越不可测了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="7" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:78,POSY:74,STR:骷髅战士># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:降魔勇者,NPCKEYNAME:矿洞降魔勇者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="骷髅战士" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="35000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="8000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>