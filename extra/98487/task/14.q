<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="14" name="新手任务-寻找凤钗线索1" type="1" suggest_level="1" visible="1" next_id="15">
		<description>
			没有找到？难道不是稻草人,能麻烦你帮我去手镯店问问嘛！或许他看到了!
		</description>
		<dialogue>
			<brief>没有找到？难道不是稻草人,能麻烦你帮我去手镯店问问嘛！或许他看到了!</brief>
			<await>没有找到？难道不是稻草人,能麻烦你帮我去手镯店问问嘛！或许他看到了!</await>
			<finish>你是刚来天藏大陆就忙着跑腿的那个新人吧，你想打听什么？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="13" />
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
			<![CDATA[前往-#NPCLINK<STR:手镯店老板,NPCKEYNAME:龙城手镯店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:手镯店老板,NPCKEYNAME:龙城手镯店>#
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
		<rewards exp="40" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>