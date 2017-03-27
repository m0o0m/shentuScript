<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="21" name="新手任务-初临天藏大陆" type="1" suggest_level="1" visible="1" next_id="22">
		<description>
			你在天藏大陆所购买或拾取的物品都会在您的包裹里，点击包裹或按F9打开包裹，
双击物品就可以使用或装备了，像一个真正的能干那样装备起它，然后再来找我。
		</description>
		<dialogue>
			<brief>你在天藏大陆所购买或拾取的物品都会在您的包裹里，点击包裹或按F9打开包裹，
双击物品就可以使用或装备了，像一个真正的勇士那样装备起它，然后再来找我。</brief>
			<await>你在天藏大陆所购买或拾取的物品都会在您的包裹里，点击包裹或按F9打开包裹，
双击物品就可以使用或装备了，像一个真正的勇士那样装备起它，然后再来找我。</await>
			<finish>你在天藏大陆所购买或拾取的物品都会在您的包裹里，点击包裹或按F9打开包裹，
双击物品就可以使用或装备了，像一个真正的勇士那样装备起它，然后再来找我。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[前往-#NPCLINK<STR:新手指导员,NPCKEYNAME:新手指导员>#
 （点击可自动寻路）
 #COLORCOLOR_RED#Ctrl+R打开任务栏#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:新手指导员,NPCKEYNAME:新手指导员>#
 （点击可自动寻路）
 #COLORCOLOR_RED#Ctrl+R打开任务栏#COLOREND#]]>
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