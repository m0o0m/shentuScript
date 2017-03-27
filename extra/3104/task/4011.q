<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4011" name="[支线]-被迷惑的男子(2)" type="2" suggest_level="1" visible="1" next_id="4012">
		<description>
			你好，年轻的勇士，你问我为什么站在这儿流泪，那是因为我的儿子失踪了，他在数天前去海角秘境出海打渔，我一直在等他回来，可是一直都看不到他的身影。今天我听别的人说，在某处似乎看到我儿子的身影，可是那儿遍布海怪，十分凶险，你能帮我救救他吗？\n
		</description>
		<dialogue>
			<brief>你好，年轻的勇士，你问我为什么站在这儿流泪，那是因为我的儿子失踪了，他在数天前去海角秘境出海打渔，我一直在等他回来，可是一直都看不到他的身影。今天我听别的人说，在某处似乎看到我儿子的身影，可是那儿遍布海怪，十分凶险，你能帮我救救他吗？\n</brief>
			<await>求求你，救救我的儿子吧！\n</await>
			<finish>你是谁？来找我做什么？\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4010" />
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
			<![CDATA[前往#LINK<MAP:海底3,POSX:66,POSY:96,STR:秘境沉船三层,MOVE:1>#进入#LINK<MAP:海底3野外,POSX:203,POSY:209,STR:海角秘境,MOVE:1>#，找到#NPCLINK<STR:被迷惑的男子,NPCKEYNAME:被迷惑的男子,MOVE:1># 。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往#LINK<MAP:海底3,POSX:66,POSY:96,STR:秘境沉船三层,MOVE:1>#进入#LINK<MAP:海底3野外,POSX:203,POSY:209,STR:海角秘境,MOVE:1>#，找到#NPCLINK<STR:被迷惑的男子,NPCKEYNAME:被迷惑的男子,MOVE:1># 。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="70000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>