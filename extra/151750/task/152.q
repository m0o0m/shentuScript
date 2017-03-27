<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="152" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#硬闯玄冰洞" type="1" suggest_level="1" visible="1" next_id="153">
		<script name="任务执行脚本" />
		<description>
			大陆的奇特的极寒之地，这次我们只能硬闯了，因为一切都已经放在了台面上，若不成功，必定遭到极为强烈的报复行进。
		</description>
		<dialogue>
			<brief>大陆的奇特的极寒之地，这次我们只能硬闯了，因为一切都已经放在了台面上，若不成功，必定遭到极为强烈的报复行进。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>虽然这次行动不是一帆风顺，但是能挫了它们的锐气，我相信它们也不敢乱来了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="151" />
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
			<![CDATA[击杀 冰咒冥后 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1>#
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:玄冰洞,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="雪域魔王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="7000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>