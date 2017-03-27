<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="70" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#获取真相" type="1" suggest_level="1" visible="1" next_id="71">
		<description>
			天荒的变故我也很诧异，不过前方似乎还有我们的人也许他能够知道真正的原因。
		</description>
		<dialogue>
			<brief>天荒的变故我也很诧异，不过前方似乎还有我们的人也许他能够知道真正的原因。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>原因？知道天荒教主吗？没错，就是因为天荒教主的降临，这就是天荒动乱的正真原因。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="69" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙二层,POSX:79,POSY:128,STR:天荒都统,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:谢流云,NPCKEYNAME:天荒阵二层谢流云,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="天荒都统" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>