<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3345" name="[主线]-最终的进攻(1)" type="1" suggest_level="1" visible="1" next_id="3346">
		<script name="3345" />
		<description>
			海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　请去击杀30只秘境海妖和30只秘境歌妖吧，为最终进攻海角秘境做出贡献！
		</description>
		<dialogue>
			<brief>海角秘境的水之力已经大幅度消散，现在，海妖一族的力量已经严重削弱，是时候给它们点颜色看看了。\n　　请去击杀30只秘境海妖和30只秘境歌妖吧，为最终进攻海角秘境做出贡献！</brief>
			<await>还没有消灭足够的海妖和歌妖吗?</await>
			<finish>很好，你的功绩我们一直在认真记录。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="57" max_num="200" />
			<prologues>
				<group>
					<prologue id="3344" />
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
			<![CDATA[进入秘境沉船三层，击杀30只#LINK<MAP:海底3,POSX:69,POSY:134,STR:秘境歌妖,MOVE:1>##MONSTERGROUP0#,30只#LINK<MAP:海底3,POSX:73,POSY:138,STR:秘境海妖,MOVE:1>##MONSTERGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口处,与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="秘境歌妖1" />
				</group>
				<group n="30" >
					<group_hunting keyname="秘境海妖1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10480000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>