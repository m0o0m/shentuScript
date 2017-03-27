<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3034" name="[主线]-债务纠纷(3)" type="1" suggest_level="1" visible="1" next_id="3035">
		<description>
			向元宝商人说清楚情况，让他宽限多几天。
		</description>
		<dialogue>
			<brief>这事，……还得麻烦你去与元宝商人谈谈，只能请他宽限几天时间了。\n　　一切拜托了！</brief>
			<await>寄售商人这个奸商欠我钱到现在还没还。。。</await>
			<finish>啊，那老鬼钱捐了居然一点风声都不告诉我，实在可恨！如果我知道这笔钱已经支援了龙城，我又怎么还会再催？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3033" />
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
			<![CDATA[与#NPCLINK<STR:元宝充值,NPCKEYNAME:元宝充值,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:元宝充值,NPCKEYNAME:元宝充值,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>