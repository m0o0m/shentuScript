<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="18" name="新手任务-归还凤钗 " type="1" suggest_level="1" visible="1" next_id="19">
		<description>
			说了这么多你都记住了吧？来凤钗给你你快拿回去还给项链店老板吧！
		</description>
		<dialogue>
			<brief>说了这么多你都记住了吧？来凤钗给你你快拿回去还给项链店老板吧！</brief>
			<await>说了这么多你都记住了吧？来凤钗给你你快拿回去还给项链店老板吧！</await>
			<finish>哎呀，真是太谢谢你了，这下终于可以和屠夫交差了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="17" />
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
  (点击可自动寻路)]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:项链店老板,NPCKEYNAME:龙城项链店>#
  (点击可自动寻路)
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
		<rewards exp="500" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>