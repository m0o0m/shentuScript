<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3281" name="[主线]-更高层次的力量(2)" type="1" suggest_level="1" visible="1" next_id="3282">
		<description>
			经过我的研究表明，获得更高层次的力量，关键是生死轮图的碎片。\n　　在历史上的某段时间，曾经有许多强者从其它位面来到天藏大陆。有一些异位面强者极端邪恶，最终被我们或击杀或俘虏，在对他们的审讯中我们知道，他们来到天藏大陆，竟是为了得到生死轮图的碎片。据他们说，如果可以从生死轮图的碎片中领悟生死轮转的秘密，可以获得成为神灵的力量！\n　　你愿意去尝试吗？
		</description>
		<dialogue>
			<brief>经过我的研究表明，获得更高层次的力量，关键是生死轮图的碎片。\n　　在历史上的某段时间，曾经有许多强者从其它位面来到天藏大陆。有一些异位面强者极端邪恶，最终被我们或击杀或俘虏，在对他们的审讯中我们知道，他们来到天藏大陆，竟是为了得到生死轮图的碎片。据他们说，如果可以从生死轮图的碎片中领悟生死轮转的秘密，可以获得成为神灵的力量！\n　　你愿意去尝试吗？</brief>
			<await>^</await>
			<finish>既然你愿意，我就告诉你更多的吧。这生死轮图原是守护整个天藏大陆的位面神器，但却因为对抗死灵神的祭炼而爆炸成为碎片。尽管生死轮图成为碎片，但每一块碎片仍然拥有非凡的力量。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3280" />
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
			<![CDATA[与龙城#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="380000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>