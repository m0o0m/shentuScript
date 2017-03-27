<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3147" name="[主线]-倾天一击（二）" type="1" suggest_level="1" visible="1" next_id="3200">
		<description>
			信标已经启动，赶快回去告诉天机老人
		</description>
		<dialogue>
			<brief>信标已经被启动，赶快回去告诉天机老人可以发动魔法攻击了</brief>
			<await>你身上没有信标魔阵无法启动信标</await>
			<finish>哈哈哈哈，很好！信标刚启动，我们就收到了信息，大型魔法已经发动。\n　　你的勇敢再一次展现在了大家的面前，这一次的行动，完美的展示了我们人类的力量，虽然没有将邪庙彻底毁灭，但是它们短时间内也很难恢复了！这长达两百年的黑暗，终于绽放出了一丝曙光！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3146" />
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
			<![CDATA[信标已经启动，快点离开这里，魔法即将到来，回去告诉龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#任务已圆满完成]]>
			</progressing>
			<accomplishing>
			<![CDATA[信标已经启动，快点离开这里，魔法即将到来，回去告诉龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#任务已圆满完成]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>