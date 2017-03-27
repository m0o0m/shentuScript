<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3223" name="[主线]-变得更强" type="1" suggest_level="1" visible="1" next_id="3224">
		<description>
			谢谢你帮了我这么多，我知道很多人都在找你。当你提升到41级后，去找找东临城的驯兽师吧。
		</description>
		<dialogue>
			<brief>谢谢你帮了我这么多，我知道很多人都在找你。当你提升到41级后，去找找东临城的驯兽师吧。</brief>
			<await>等你41级的时候去找东临城的驯兽师。</await>
			<finish>是的，我确实有事找你。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3222" />
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
			<![CDATA[达到41级时，到东临城找#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="41" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>