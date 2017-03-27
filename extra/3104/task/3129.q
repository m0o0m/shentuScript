<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3129" name="[主线]-绝路救援（一）" type="1" suggest_level="1" visible="1" next_id="3130">
		<description>
			五天前，武馆教练派遣了一名弟子前往绝路城执行任务，但是五天过去了，他的弟子却没有回来，武馆教练怀疑他的弟子一定是陷入了险境，所以请求自己去绝路谷寻找那名身穿褐色皮甲的弓箭手。
		</description>
		<dialogue>
			<brief>我有个请求需要麻烦你帮助，五天前，我派遣了一名弟子前往绝路城执行任务，五天过去了，他却没有回来，他一定是陷入了险境，你能去绝路城，帮我寻找他吗？
		\n　　他是一名弓箭手，身穿着褐色的皮甲。</brief>
			<await>我…我…我是攻……</await>
			<finish>你…你…你是受……老师……所托而来的吗？如你所见……我受了很严重的伤！这绝路城的牛魔非常凶悍，你要小心了</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3128" />
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
			<![CDATA[去绝路城东部寻找#NPCLINK<STR:受伤的弓箭手,NPCKEYNAME:受伤的弓箭手,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去绝路城东部寻找#NPCLINK<STR:受伤的弓箭手,NPCKEYNAME:受伤的弓箭手,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>