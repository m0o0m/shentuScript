<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="118" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#骸骨的暴动" type="1" suggest_level="1" visible="1" next_id="119">
		<script name="任务执行脚本" />
		<description>
			果然还是发生了，原本宁静的骸骨洞，最近变的暴躁不安，里面的阎罗教主也开始蠢蠢欲动，我们必须打消它的念头，否则我们的城镇将变为人间炼狱。
		</description>
		<dialogue>
			<brief>果然还是发生了，原本宁静的骸骨洞，最近变的暴躁不安，里面的阎罗教主也开始蠢蠢欲动，我们必须打消它的念头，否则我们的城镇将变为人间炼狱。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>重创了阎罗教主，看来这次它的计划是被你给粉碎了，不得不说，你的出色已经出乎我的意料。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="117" />
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
			<![CDATA[击杀 阎罗教主 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:骸骨洞,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:药品尊者,NPCKEYNAME:巫山城药品尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="黄泉教主" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>