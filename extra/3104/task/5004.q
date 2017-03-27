<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5004" name="[剧情]-雪域天狼的传说（4）" type="2" suggest_level="1" visible="1" next_id="5005">
		<description>
			听说人类善于发明治疗伤势的药品……说到这里我很生气！打假，一定要加强力度打假，我曾经偶然得到过一瓶金创药，可是完全治不了我的伤！呃，总之，听说还有更高级的药，叫强效金创药的，你给我5瓶来吧。
		</description>
		<dialogue>
			<brief>听说人类善于发明治疗伤势的药品……说到这里我很生气！打假，一定要加强力度打假，我曾经偶然得到过一瓶金创药，可是完全治不了我的伤！呃，总之，听说还有更高级的药，叫强效金创药的，你给我5瓶来吧。</brief>
			<await>需要5瓶强盗金创药。</await>
			<finish>啊，5瓶强效的才算有效呀……真是伤不起啊！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5003" />
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
			<![CDATA[为治疗小白狼的伤势，需提供5瓶强效金创药#ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将准备好的强效金创药交给#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="强效金创药"  n="5" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>