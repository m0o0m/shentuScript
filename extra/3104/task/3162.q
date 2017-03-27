<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3162" name="[主线]-来自牛魔的袭击（2）" type="1" suggest_level="1" visible="1" next_id="3162">
		<description>
			在绝路岭的西北，牛魔占据的绝路城，这些年来，它们只是呆在绝路城内，很少出来侵犯人类，但现在，它们突然派出牛魔，开始袭击我们的开荒人员。\n　　据我们了解，袭击者是一群牛魔守卫以及至少一只精英牛魔。精英牛魔飘忽不定难以找到，先去解决10只牛魔守卫吧！
		</description>
		<dialogue>
			<brief>在绝路岭的西北，牛魔占据的绝路城，这些年来，它们只是呆在绝路城内，很少出来侵犯人类，但现在，它们突然派出牛魔，开始袭击我们的开荒人员。\n　　据我们了解，袭击者是一群牛魔守卫以及至少一只精英牛魔。精英牛魔飘忽不定难以找到，先去解决10只牛魔守卫吧！</brief>
			<await>击杀10只牛魔守卫。</await>
			<finish>做得好。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3161" />
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
			<![CDATA[需击杀10只#LINK<MAP:绝路岭,POSX:64,POSY:89,STR:牛魔守卫,MOVE:1>##MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:绝路岭士兵,NPCKEYNAME:绝路岭士兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="牛魔守卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>