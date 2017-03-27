<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="69" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#道路封锁" type="1" suggest_level="1" visible="1" next_id="70">
		<script name="任务执行脚本" />
		<description>
			怪物已经封锁了进去的道路，里面似乎有什么特别的东西。
		</description>
		<dialogue>
			<brief>怪物已经封锁了进去的道路，里面似乎有什么特别的东西。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>终于可以多一个帮手了，而这里也只能够让我们稍作喘息。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="68" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙二层,POSX:104,POSY:132,STR:天荒护卫,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:除魔僧人,NPCKEYNAME:天荒阵二层除魔僧人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="天荒护卫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>