<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="12" name="新手任务-新娘的风钗" type="1" suggest_level="1" visible="1" next_id="13">
		<description>
			瞧我这脑子，怎么忘了最重要的事情？天藏大陆风俗，新郎要在婚礼上亲手为新娘插上凤钗，
凤钗前三天我就拜托项链店老板做了，可一直忘了取回来，（游戏名）你能不能帮我带个信给
项链店老板，让他赶紧把货送过来？
		</description>
		<dialogue>
			<brief>瞧我这脑子，怎么忘了最重要的事情？天藏大陆风俗，新郎要在婚礼上亲手为新娘插上凤钗，
凤钗前三天我就拜托项链店老板做了，可一直忘了取回来，你能不能帮我带个信给
项链店老板，让他赶紧把货送过来？</brief>
			<await>瞧我这脑子，怎么忘了最重要的事情？天藏大陆风俗，新郎要在婚礼上亲手为新娘插上凤钗，
凤钗前三天我就拜托项链店老板做了，可一直忘了取回来，你能不能帮我带个信给
项链店老板，让他赶紧把货送过来？</await>
			<finish>是屠夫让你来的？哎呀呀，这可怎么办才好？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="11" />
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
			<![CDATA[前往-#NPCLINK<STR:项链店老板,NPCKEYNAME:龙城项链店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#Ctrl+R打开任务栏#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:项链店老板,NPCKEYNAME:龙城项链店>#
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
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>