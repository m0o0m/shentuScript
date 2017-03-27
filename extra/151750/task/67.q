<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="67" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#天荒线索" type="1" suggest_level="1" visible="1" next_id="68">
		<script name="任务执行脚本" />
		<description>
			前面似乎有一个洞口，就是不知道通向哪里了。这里的怪物还真是不少，以防万一，进去查看还是先清理掉那些烦人的家伙吧。
		</description>
		<dialogue>
			<brief>前面似乎有一个洞口，就是不知道通向哪里了。这里的怪物还真是不少，以防万一，进去查看还是先清理掉那些烦人的家伙吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>真没想到，小小年纪，已有这般能耐，实在难得。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="66" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙一层,POSX:23,POSY:75,STR:天荒护卫,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:阳顶天,NPCKEYNAME:天荒阵一层阳顶天,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天荒护卫" />
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
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>