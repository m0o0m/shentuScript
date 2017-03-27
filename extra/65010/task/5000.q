<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5000" name="#COLORCOLOR_YELLOW#[经验、材料] #COLORCOLOR_ORANGE#副本" type="3" suggest_level="1" visible="1">
		<description>
			12131
		</description>
		<dialogue>
			<brief>前往副本，可以获得大量经验和材料道具</brief>
			<await>前往副本，可以获得大量经验和材料道具</await>
			<finish>前往副本，可以获得大量经验和材料道具</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="99999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="62" max_num="1000" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[找副本使节#NPCLINK<STR:（前往副本）,NPCKEYNAME:巫山城副本使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[找副本使节#NPCLINK<STR:（前往副本）,NPCKEYNAME:巫山城副本使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="0" max_num="2000" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>