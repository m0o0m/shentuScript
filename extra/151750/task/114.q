<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="114" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#牛魔的挑衅" type="1" suggest_level="1" visible="1" next_id="115">
		<script name="任务执行脚本" />
		<description>
			一个古老且神秘的洞穴，里面的BOSS牛魔王也是雄霸一方。最近老有牛魔挑衅，定是那牛头耐不住寂寞，想要侵犯我们的城镇，我们一定要强有力的反击回去，让那牛头不敢出来。
		</description>
		<dialogue>
			<brief>一个古老且神秘的洞穴，里面的BOSS牛魔王也是雄霸一方。最近老有牛魔挑衅，定是那牛头耐不住寂寞，想要侵犯我们的城镇，我们一定要强有力的反击回去，让那牛头不敢出来。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>果然没有看错人，居然打败牛魔王，果然我辈英雄出少年呐。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="113" />
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
			<![CDATA[击杀牛魔王 #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIP专享区域：#COLOREND# #NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#BOSS区域#COLOREND# #NPCLINK<STR:远古神殿,NPCKEYNAME:玛雅神殿使者,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:牛魔洞,NPCKEYNAME:巫山城传送员,MOVE:1># 
任务奖励：#COLORCOLOR_MAGENTA#66级戒指#COLOREND# #COLORCOLOR_GOLD#1000绑元#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:王城守卫,NPCKEYNAME:巫山城王城守卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="牛魔王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>