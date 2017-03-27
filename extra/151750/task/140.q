<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="140" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#打探赤炎禁地" type="1" suggest_level="1" visible="1" next_id="141">
		<script name="任务执行脚本" />
		<description>
			据说那里面的东西都无惧生死，我们见过很多亡命之徒，但是跟那里的怪物比起来根本不值一提，我们很像搞清楚他们为什么如此。
		</description>
		<dialogue>
			<brief>据说那里面的东西都无惧生死，我们见过很多亡命之徒，但是跟那里的怪物比起来根本不值一提，我们很像搞清楚他们为什么如此。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>龙的力量？你确定？这是多少年了，龙的问世不会那么简单，为什么一直没人发现里面居然有条龙。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="139" />
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
			<![CDATA[击杀 铁血大帝 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1>#
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:赤炎禁地,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="雷炎蛛王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>