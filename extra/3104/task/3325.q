<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3325" name="[主线]-来自古代的留言(5)" type="1" suggest_level="1" visible="1" next_id="3326">
		<script name="3325" />
		<description>
			从这位刺客前辈的留言中，我们可以看到战胜海魔的方法。至少，因为将碎片的力量分散至触手身上，并分赐给了其它海妖，如果能尽量多地消灭解手，击杀海妖，那么，将可以削弱海魔的力量。\n　　请去击杀2只海魔触手，30只秘境海妖、30只秘境歌妖吧。
		</description>
		<dialogue>
			<brief>从这位刺客前辈的留言中，我们可以看到战胜海魔的方法。至少，因为将碎片的力量分散至触手身上，并分赐给了其它海妖，如果能尽量多地消灭解手，击杀海妖，那么，将可以削弱海魔的力量。\n　　请去击杀2只海魔触手，30只秘境海妖、30只秘境歌妖吧。</brief>
			<await>你还没有消灭足够多的触手和海妖。</await>
			<finish>这是战胜海魔的第一步，请在以后的冒险中尽量多地消灭触手和海妖吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3324" />
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
			<![CDATA[进入海角秘境三层和四层，消灭2只#LINK<MAP:海底4,POSX:139,POSY:73,STR:海魔触手,MOVE:1>##MONSTERGROUP0#、30只#LINK<MAP:海底3,POSX:73,POSY:138,STR:秘境海妖,MOVE:1>##MONSTERGROUP1#、30只#LINK<MAP:海底3,POSX:69,POSY:134,STR:秘境歌妖,MOVE:1>##MONSTERGROUP2#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回海底入口,与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="2" >
					<group_hunting keyname="海魔触手1" />
					<group_hunting keyname="海魔触手2" />
					<group_hunting keyname="海魔触手3" />
				</group>
				<group n="30" >
					<group_hunting keyname="秘境海妖1" />
				</group>
				<group n="30" >
					<group_hunting keyname="秘境歌妖1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10480000" ingot="0" bind_ingot="0" integral="0" gold="100000" bind_gold="0" >
			<awards>
				<award keyname="万年雪霜包"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>