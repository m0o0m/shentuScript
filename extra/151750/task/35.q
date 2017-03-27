<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="35" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#巨型虫子" type="1" suggest_level="1" visible="1" next_id="36">
		<description>
			前方的那些巨大的虫子，好生厉害，先前一人前去击杀，结果硬生生被那东西给咬下一条手臂，结果费劲我们几人之力才把那人救下来。不过这辈子也是被这些畜生给毁了。
		</description>
		<dialogue>
			<brief>前方的那些巨大的虫子，好生厉害，先前一人前去击杀，结果硬生生被那东西给咬下一条手臂，结果费劲我们几人之力才把那人救下来。不过这辈子也是被这些畜生给毁了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>谁！离我远点。咦，是人啊。还以为是虫子呢。见谅，职业病。你也是过来寻宝的吗？不是啊，那我就放心了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="34" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞二层,POSX:34,POSY:102,STR:黑暗爬虫王,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:寻宝人,NPCKEYNAME:毒虫洞二层寻宝人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="邪恶钳虫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>