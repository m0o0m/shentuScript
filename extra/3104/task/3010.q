<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3010" name="[主线]-寻找裁缝" type="1" suggest_level="1" visible="1" next_id="3011">
		<description>
			光有武器是不够的，村里的裁缝也可以帮助到你，去她那里看看吧。
		</description>
		<dialogue>
			<brief>光有武器是不够的，村里的裁缝也可以帮助到你，去她那里看看吧。</brief>
			<await>村里的裁缝也可以为你带来帮助，去她那里看看吧。</await>
			<finish>我就是村里的裁缝！关于防具方面的买卖都可以找我！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3009" />
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
			<![CDATA[与#NPCLINK<STR:裁缝,NPCKEYNAME:新手村裁缝左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:裁缝,NPCKEYNAME:新手村裁缝左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>