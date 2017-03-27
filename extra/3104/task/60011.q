<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60011" name="[支线]-熟悉悬赏任务" type="2" suggest_level="1" visible="1">
		<script name="60011" />
		<description>
			来啦，来啦，悬赏任务大甩卖啦，每天可以接十个任务啦~~，不仅可以免费接任务，还可以花元宝接取更高级的任务啦！经验多多，奖励多多啦，来啦，来啦~过了这村就没这店啦。\n　　少年，来个悬赏任务不？
		</description>
		<dialogue>
			<brief>来啦，来啦，悬赏任务大甩卖啦，每天可以接十个任务啦~~，不仅可以免费接任务，还可以花元宝接取更高级的任务啦！经验多多，奖励多多啦，来啦，来啦~过了这村就没这店啦。\n　　少年，来个悬赏任务不？</brief>
			<await>少年，你还没有完成悬赏任务呦</await>
			<finish>呵呵，悬赏任务很简单吧，来， 这5个循环魔咒送你啦，你可以用它把悬赏任务刷新到更高的品级哦，记得好，每天都可以到我这里来完成十次悬赏任务</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[完成一次悬赏任务后去巫山城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#完成任务]]>
			</progressing>
			<accomplishing>
			<![CDATA[完成一次悬赏任务后去巫山城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="循环魔咒"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>