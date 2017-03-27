<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="62" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#毒障漫行" type="1" suggest_level="1" visible="1" next_id="63">
		<description>
			你要前行？小心，里面有毒障，之前我们不少兄弟都因为毒障都中毒了。
		</description>
		<dialogue>
			<brief>你要前行？小心，里面有毒障，之前我们不少兄弟都因为毒障都中毒了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>啥事儿啊？别急，慢慢说，看你面色似乎不是很好。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="61" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙一层,POSX:104,POSY:176,STR:天荒杂兵,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:江湖郎中,NPCKEYNAME:天荒阵一层江湖郎中,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天荒杂兵" />
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