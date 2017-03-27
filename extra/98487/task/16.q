<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="16" name="新手任务-寻找凤钗线索3" type="1" suggest_level="1" visible="1" next_id="17">
		<description>
			凤钗？我昨天看到衣服店老板的女儿在那玩，你去问一下，可能她女儿捡去了。
		</description>
		<dialogue>
			<brief>凤钗？我昨天看到衣服店老板的女儿在那玩，你去问一下，可能她女儿捡去了。</brief>
			<await>凤钗？我昨天看到衣服店老板的女儿在那玩，你去问一下，可能她女儿捡去了。</await>
			<finish>人靠衣装佛靠金装，在天藏大陆，衣服可不能只是好看。你身上那件布衣也赶紧换了吧。什么你不是来买衣服的？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="15" />
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
			<![CDATA[前往-#NPCLINK<STR:衣服店老板,NPCKEYNAME:龙城衣服店内>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:衣服店老板,NPCKEYNAME:龙城衣服店内>#
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
		<rewards exp="120" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>