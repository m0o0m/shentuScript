<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="43" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#怪物封路" type="1" suggest_level="1" visible="1" next_id="44">
		<script name="任务执行脚本" />
		<description>
			太可怕了，本来还是少量的怪物追着我们，眼看就快到出口了，结果越来越多，结果路都被封住了。天啊！怎么办啊！里面还有好多人呢！
		</description>
		<dialogue>
			<brief>太可怕了，本来还是少量的怪物追着我们，眼看就快到出口了，结果越来越多，结果路都被封住了。天啊！怎么办啊！里面还有好多人呢！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>格老子的！杀完一个又来一个，还真的没完了！格老子的！这帮畜生竟还会偷袭！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="42" />
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
			<![CDATA[#LINK<MAP:猪洞一层,POSX:70,POSY:29,STR:食人蝎蛇,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:带刀武士,NPCKEYNAME:食人带刀武士,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="6" >
					<group_hunting keyname="食人蝎蛇" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>