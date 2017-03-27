<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3163" name="[主线]-来自牛魔的袭击（3）" type="1" suggest_level="1" visible="1" next_id="3122">
		<description>
			精英牛魔神出鬼没，而且实力强大，勇士实力虽然不非，恐怕不是对手，先暂时忍耐吧！当你实力变得更强之后，请来消灭这只精英牛魔吧！先回去报告天机老人吧。\n　　消灭任意精英级怪物都会被“降妖除魔”的目标系统记录，当数量达到一定程度时，可以领取奖励哦。（点击游戏界面上方的“目标”，查看“降妖除魔”列表。）
		</description>
		<dialogue>
			<brief>精英牛魔神出鬼没，而且实力强大，勇士实力虽然不非，恐怕不是对手，先暂时忍耐吧！当你实力变得更强之后，请来消灭这只精英牛魔吧！先回去报告天机老人吧。\n　　消灭任意精英级怪物都会被“降妖除魔”的目标系统记录，当数量达到一定程度时，可以领取奖励哦。（点击游戏界面上方的“目标”，查看“降妖除魔”列表。）</brief>
			<await>回龙城报告天机老人。</await>
			<finish>你做得不错，虽然精英牛魔一时没有消灭，但我会安排其它人接手的！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3162" />
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
			<![CDATA[回去将些事的结果报告#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去将些事的结果报告#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>