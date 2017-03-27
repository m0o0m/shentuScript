<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3027" name="[主线]-套装的秘密" type="1" suggest_level="1" visible="1" next_id="3028">
		<description>
			去找装备大师了解关于套装装备的情报！
		</description>
		<dialogue>
			<brief>现在，我要告诉你一些关于套装的事情。\n　　天藏大陆有着各种威力强大的装备，最为特别的是一些神奇的套装！这是一些不同部位的装备，不仅每一件都非常不错，如果将他们凑齐起来，还可以发挥出额外的威力。\n　　为了让你更好的熟悉套装，你可以去找装备大师，我知道那老鬼肯定有收藏的。</brief>
			<await>去找装备大师，也许会有惊喜。</await>
			<finish>天机老鬼叫你来的？不像呀！真的是天机老鬼叫你来的？哦，看在还欠他酒钱的份上，那么，你有什么事？\n　　什么？套装！该死，那老鬼怎么知道的？呃，酒呢？该死的猴子，又来偷我的酒，我要杀了它们！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3026" />
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
			<![CDATA[与#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="16800" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>