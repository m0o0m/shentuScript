<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3347" name="[主线]-最终的进攻(3)" type="1" suggest_level="1" visible="1" next_id="">
		<script name="3347" />
		<description>
			海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　我记得你上一次已经消灭了大量的怪物，这一次你将面对秘境中真正强大的敌人，那就是恐惧的海魔触手.消灭5只就够了!
		</description>
		<dialogue>
			<brief>海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　我记得你上一次已经消灭了大量的怪物，这一次你将面对秘境中真正强大的敌人，那就是恐惧的海魔触手.消灭5只就够了!</brief>
			<await>还没有消灭足够的海魔触手吗?</await>
			<finish>很好，前进的道路已经清除，大军即将展开对海魔的进攻!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="57" max_num="200" />
			<prologues>
				<group>
					<prologue id="3346" />
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
			<![CDATA[进入#LINK<MAP:海底5,POSX:39,POSY:95,STR:海魔巢穴,MOVE:1>#,击杀5只#LINK<MAP:海底4,POSX:139,POSY:73,STR:海魔触手,MOVE:1>##MONSTERGROUP0#后回来.]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口处,与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="海魔触手1" />
					<group_hunting keyname="海魔触手2" />
					<group_hunting keyname="海魔触手3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="7820000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>