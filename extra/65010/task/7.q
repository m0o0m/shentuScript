<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="7" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#少女之托" type="1" suggest_level="1" visible="1" next_id="8">
		<script name="任务执行脚本" />
		<description>
			英雄，刚才有一人同时与我被困，只是后来怪物太多，我们被冲散了，希望英雄能够前去搭救。
		</description>
		<dialogue>
			<brief>英雄，刚才有一人同时与我被困，只是后来怪物太多，我们被冲散了，希望英雄能够前去搭救。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>感谢英雄相救。那位姑娘也被英雄相救？那真的是太好了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="6" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:71,POSY:111,STR:矿洞蛆虫># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复#NPCLINK<STR:赶路的村民,NPCKEYNAME:矿洞迷路的村民>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="洞蛆" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>