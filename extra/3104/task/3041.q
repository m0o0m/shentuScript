<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3041" name="[主线]-骷髅暴动(1)" type="1" suggest_level="1" visible="1" next_id="3042">
		<script name="3041" />
		<description>
			前往将军冢查探，并带回5根骷髅的骨头吧。
		</description>
		<dialogue>
			<brief>我们需要你的帮助！因为将军冢发生了大危机。当年弈人将军镇守巫山城东北时，面对源源不断的恶魔，为了彻底消灭他们，以十万军士的血肉化为一座庞大的坟冢，将恶魔们全部埋葬！\n　　就在不久前，将军冢的骷髅活不断地冲击着将军冢的封印，如果让他们冲破封印，巫山城必然遭受他们的涂毒！</brief>
			<await>前往将军冢查探，检查里面的情况。</await>
			<finish>不愧为守护者之名啊，这么危险的地方，也能够来去自如！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3040" />
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
				<trophy monster="飞刀骷髅1" item="骷髅的骨头" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="单刀骷髅1" item="骷髅的骨头" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="骷髅战士1" item="骷髅的骨头" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="大斧骷髅1" item="骷髅的骨头" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去将军冢一层击败#LINK<MAP:将军冢1,POSX:159,POSY:66,STR:骷髅,MOVE:1>#，获得骷髅的骨头#ITEMGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="5" bind_require="1" >
					<group_item keyname="骷髅的骨头" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="72000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>