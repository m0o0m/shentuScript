<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="66" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#天荒的围困" type="1" suggest_level="1" visible="1" next_id="67">
		<description>
			前方聚集了大量的天荒怪物，围堵了整条路，要过去必须突破他们的包围了。
		</description>
		<dialogue>
			<brief>前方聚集了大量的天荒怪物，围堵了整条路，要过去必须突破他们的包围了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>哇，你突围出来啦？好厉害。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="65" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙一层,POSX:49,POSY:106,STR:天荒战将,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:探险爱好者,NPCKEYNAME:天荒一探险爱好者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天荒战将" />
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