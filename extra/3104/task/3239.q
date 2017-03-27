<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3239" name="[主线]-阻止恶魔的阴谋(3)" type="1" suggest_level="1" visible="1" next_id="3240">
		<description>
			如果想取得恶魔的行动计划，那就应该从天魔密探身上下手。请马上行动吧，去东临城北面击败天魔密探，看能否从他们身上搜出些什么。
		</description>
		<dialogue>
			<brief>如果想取得恶魔的行动计划，那就应该从天魔密探身上下手。请马上行动吧，去东临城北面击败天魔密探，看能否从他们身上搜出些什么。</brief>
			<await>击败天魔密探看能否获得什么</await>
			<finish>投毒报告！？糟糕，东临城的水井，已经被天魔密探投毒，或许有部分人类已经在饮用水井之后中毒，情势已经恶劣到极点了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3238" />
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
				<trophy monster="天魔密探" item="投毒报告" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城北面击败天魔密探，获取#LINK<MAP:东临城,POSX:389,POSY:223,STR:投毒报告,MOVE:1>##ITEMGROUP0#后找龙城的天机老人]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="投毒报告" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>