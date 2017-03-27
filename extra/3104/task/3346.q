<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3346" name="[主线]-最终的进攻(2)" type="1" suggest_level="1" visible="1" next_id="3347">
		<script name="3346" />
		<description>
			海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　我记得你上一次已经消灭了大量的海妖和歌妖，不过，它们只是小角色，请去击杀40只海魔侍从,40只海魔护卫吧，它们才是大家伙！
		</description>
		<dialogue>
			<brief>海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　我记得你上一次已经消灭了大量的海妖和歌妖，不过，它们只是小角色，请去击杀40只海魔侍从,40只海魔护卫吧，它们才是大家伙！</brief>
			<await>还没有消灭足够的海魔侍从和海魔护卫~</await>
			<finish>很好，你的功绩我们一直在认真记录。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3345" />
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
			<![CDATA[进入秘境沉船四层，击杀40只#LINK<MAP:海底4,POSX:139,POSY:73,STR:海魔侍从,MOVE:1>##MONSTERGROUP0#,40只#LINK<MAP:海底4,POSX:139,POSY:73,STR:海魔护卫,MOVE:1>##MONSTERGROUP1#后回来.]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口处,与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="40" >
					<group_hunting keyname="海魔侍从1" />
				</group>
				<group n="40" >
					<group_hunting keyname="海魔护卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="18720000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>