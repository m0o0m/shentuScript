<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="116" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#永夜的复苏" type="1" suggest_level="1" visible="1" next_id="117">
		<script name="任务执行脚本" />
		<description>
			一个古老且神秘的洞穴，里面的BOSS牛魔王也是雄霸一方。最近老有牛魔挑衅，定是那牛头耐不住寂寞，想要侵犯我们的城镇，我们一定要强有力的反击回去，让那牛头不敢出来。
		</description>
		<dialogue>
			<brief>见过它的人，至今为止没有一个还活着的，听着有些夸张？哈哈，听说过龙吗？对，没错，当年它就是一刀劈开了一条活龙。不知道为什么它又回来了，它的那把血刃让多少人感到无尽的恐惧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>感谢你！年轻人，你阻止了一场灾难。多少年了，能阻拦它的人你是第一个，似乎这只是个开始，总感觉背后藏着一个惊天大阴谋。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="115" />
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
			<![CDATA[击杀血色千人斩 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:永夜之地,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="尸霸" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>