<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="125" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#镇魔禁地的阴谋" type="1" suggest_level="1" visible="1" next_id="126">
		<script name="任务执行脚本" />
		<description>
			他们的手段及其残忍，死在他们手上的人要以万计，一直想要称霸这一方土地的他们，不知道又在背后谋划什么。
		</description>
		<dialogue>
			<brief>他们的手段及其残忍，死在他们手上的人要以万计，一直想要称霸这一方土地的他们，不知道又在背后谋划什么。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>做的好极了，这次真的是出乎所有人的意料。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="124" />
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
			<![CDATA[击杀 囚世天魔 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:镇魔禁地,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:守卫队长,NPCKEYNAME:巫山城守卫队长,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="虹魔教主" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>