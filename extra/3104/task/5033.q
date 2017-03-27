<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5033" name="[支线]-绝路城守卫的请求（3）" type="2" suggest_level="1" visible="1" next_id="5034">
		<description>
			那天晚上，我正像往常一样监视绝路城，突然有几道黑影翻过围墙越过我的头顶，战斗就这样爆发了，他们击伤了我，但似乎担心动静太大，又匆忙地离开了。不是我实力太差，绝路城内的牛魔，除非牛魔勇士或者牛魔将军亲至，其它的牛魔都不可能伤得了我，肯定是未知的强敌。\n　　现在，我们有个兄弟已经追击黑影而去，我担心他遇上危险，勇士，请前往接应吧！
		</description>
		<dialogue>
			<brief>那天晚上，我正像往常一样监视绝路城，突然有几道黑影翻过围墙越过我的头顶，战斗就这样爆发了，他们击伤了我，但似乎担心动静太大，又匆忙地离开了。不是我实力太差，绝路城内的牛魔，除非牛魔勇士或者牛魔将军亲至，其它的牛魔都不可能伤得了我，肯定是未知的强敌。\n　　现在，我们有个兄弟已经追击黑影而去，我担心他遇上危险，勇士，请前往接应吧！</brief>
			<await>前往绝路城南部，与追击黑影的绝路城士兵对话。</await>
			<finish>勇士，请留步！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5032" />
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
			<![CDATA[前往绝路城南部，与追击黑影而去的#NPCLINK<STR:绝路城士兵,NPCKEYNAME:绝路城士兵,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往绝路城南部，与追击黑影而去的#NPCLINK<STR:绝路城士兵,NPCKEYNAME:绝路城士兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>