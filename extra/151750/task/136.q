<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="136" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#流沙秘洞的阴谋" type="1" suggest_level="1" visible="1" next_id="137">
		<script name="任务执行脚本" />
		<description>
			流沙秘洞里面究竟有多少秘密，没有人知道。因为只要进去的人，都没有出来的，传言里面的怪物精通各类属性攻击。
		</description>
		<dialogue>
			<brief>流沙秘洞里面究竟有多少秘密，没有人知道。因为只要进去的人，都没有出来的，传言里面的怪物精通各类属性攻击。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>你居然回来了，真不可思议，你太让我惊讶了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="135" />
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
			<![CDATA[击杀 任意一只九尾狐 #MONSTERGROUP0#
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:远古神殿,NPCKEYNAME:玛雅神殿使者,MOVE:1># 
#COLORCOLOR_BROWN#野外挑战#COLOREND# #NPCLINK<STR:流沙秘洞,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巫山使节,NPCKEYNAME:巫山城巫山使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="玉面素狐王" />
					<group_hunting keyname="金爪赤狐王" />
					<group_hunting keyname="火尾黑狐王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>