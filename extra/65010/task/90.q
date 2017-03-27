<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="90" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#勋章升级至2级" type="1" suggest_level="1" visible="1" next_id="10002">
		<script name="任务执行脚本" />
		<description>
			勋章可以极大提升角色攻击能力，并且具有升级功能，需要消耗成就积分。成就积分可以通过获取成就或者购买将军印来提升。
		</description>
		<dialogue>
			<brief>勋章可以极大提升角色攻击能力，并且具有升级功能，需要消耗成就积分。成就积分可以通过获取成就或者购买将军印来提升。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>不要忘记升级它，无论打BOSS还是打架，这是一件超级好用的攻击装备。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="89" />
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
			<![CDATA[#COLORCOLOR_BROWN#点击打开：#COLOREND# #UILINK<STR:勋章升级,WND:执行脚本,PARAM:TaskAchieve()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:王城守卫,NPCKEYNAME:巫山城王城守卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>