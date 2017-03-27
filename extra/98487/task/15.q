<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="15" name="新手任务-寻找凤钗线索2" type="1" suggest_level="1" visible="1" next_id="16">
		<description>
			凤钗？我没看见，你去戒指店问问了，可能会有线索。
		</description>
		<dialogue>
			<brief>凤钗？我没看见，你去戒指店问问了，可能会有线索。</brief>
			<await>凤钗？我没看见，你去戒指店问问了，可能会有线索。</await>
			<finish>戒指可不止结婚的时候用得上，在天藏大陆，打架杀怪戒指可是必不可少的。什么？你不是来买戒指的？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="14" />
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
			<![CDATA[前往-#NPCLINK<STR:戒指店老板,NPCKEYNAME:龙城戒指店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:戒指店老板,NPCKEYNAME:龙城戒指店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>