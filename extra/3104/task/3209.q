<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3209" name="[主线]-奇特的物质(1)" type="1" suggest_level="1" visible="1" next_id="3210">
		<description>
			东临城对各种物品的需求非常紧张，小店也是如此。但军需处的人员，现在忙得每天只有很短的一段时间睡眠，所以，我想寻找冒险者的帮助。\n　　我听说城外的蝎子在魔化后毒性猛烈，这是难得的材料呀。请帮我去收集10份魔化蝎子的毒液吧，我会给你报酬的。
		</description>
		<dialogue>
			<brief>东临城对各种物品的需求非常紧张，小店也是如此。但军需处的人员，现在忙得每天只有很短的一段时间睡眠，所以，我想寻找冒险者的帮助。\n　　我听说城外的蝎子在魔化后毒性猛烈，这是难得的材料呀。请帮我去收集10份魔化蝎子的毒液吧，我会给你报酬的。</brief>
			<await>请帮我去收集10份魔化蝎子的毒液吧，我会给你报酬的。</await>
			<finish>有你这么强大的勇士帮助，这效率真是让人惊叹呀！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3208" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="魔化蝎子" item="毒液" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城附近击败魔化蝎子，获取10份#LINK<MAP:东临城,POSX:214,POSY:174,STR:毒液,MOVE:1>##ITEMGROUP0#后找东临城的杂货商]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="毒液" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>