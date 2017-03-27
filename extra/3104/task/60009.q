<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60009" name="[支线]-试炼" type="2" suggest_level="1" visible="1">
		<description>
			要想变得强大，并不是一朝一夕的事，那需要有坚强的意志，勤奋的行动力和一分的天赋，天赋人人都有，就看后天谁能坚持的下来，只要你每天坚持进行试炼，总有一天，你就能驰骋大陆，遨游于天地之间，废话少说，我们现在就开始试炼吧，你去试炼场杀死100只试炼兽再来找我，放心吧，我会给你丰厚的奖励的。
		</description>
		<dialogue>
			<brief>要想变得强大，并不是一朝一夕的事，那需要有坚强的意志，勤奋的行动力和一分的天赋，天赋人人都有，就看后天谁能坚持的下来，只要你每天坚持进行试炼，总有一天，你就能驰骋大陆，遨游于天地之间，废话少说，我们现在就开始试炼吧，你去试炼场杀死100只试炼兽再来找我，放心吧，我会给你丰厚的奖励的。</brief>
			<await>100只试炼兽都搞不定，还想变的强大吗？</await>
			<finish>不错，虽然你花的时间不少，但是能消灭那么多试炼兽，也能看出了你的毅力非常了</finish>
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
			<![CDATA[通过#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#进入#COLORCOLOR_YELLOW#试炼场#COLOREND#消灭100只#COLORCOLOR_YELLOW#试炼兽#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城广场找#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="初级试炼兽" />
					<group_hunting keyname="中级试炼兽" />
					<group_hunting keyname="高级试炼兽" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="试炼凭证"  n="150" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>