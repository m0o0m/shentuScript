<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3045" name="[主线]-矿洞变故(1)" type="1" suggest_level="1" visible="1" next_id="3046">
		<description>
			向天机老人了解废弃矿洞的情况！
		</description>
		<dialogue>
			<brief>现在，需要马上去查探废弃矿洞了！\n　　什么？你不知道废弃矿洞？那先让我替你介绍下废弃矿洞吧。看到巫山城的西北了吧，那就是废弃矿洞的所在。</brief>
			<await>向天机老人了解废弃矿洞的情况！</await>
			<finish>以前，那里出产的矿石，为反抗恶魔的勇士打造了大量的装备，也正因为如此，在一个月黑风高的晚上，恶魔潜入矿洞，灌注了大量的死气，最终，矿洞中的矿工和守护者被全部侵蚀，成为了僵尸般的在存在！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3043" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="29000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>