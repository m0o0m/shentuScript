<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3307" name="[主线]-五行的秘密(1)" type="1" suggest_level="1" visible="1" next_id="3308">
		<description>
			我们使用的力量，其实不过是最低层次的力量，而五行灵力是另一种高层次的力量。如果人类可以掌握这种五行之力，那我们的实力会超越已有境界！\n　　可以确定有某种宝物在转化水行灵力，从而使普通海怪力量暴增，并在体内形成了那种蓝色晶体！你将这个消息转告魔语尊者吧。
		</description>
		<dialogue>
			<brief>我们使用的力量，其实不过是最低层次的力量，而五行灵力是另一种高层次的力量。如果人类可以掌握这种五行之力，那我们的实力会超越已有境界！\n　　可以确定有某种宝物在转化水行灵力，从而使普通海怪力量暴增，并在体内形成了那种蓝色晶体！你将这个消息转告魔语尊者吧。</brief>
			<await>去龙城与魔语尊者对话</await>
			<finish>海底秘境中，道家大师确认的那件宝物，其实便是我们正在寻找的生死轮图的碎片。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3306" />
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
			<![CDATA[回到龙城，与#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到龙城，与#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>