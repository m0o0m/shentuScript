<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="86" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#魔月峡谷" type="1" suggest_level="1" visible="1" next_id="87">
		<script name="任务执行脚本" />
		<description>
			每日副本之魔月峡谷，开启等级66级，每日可进入两次，奖励内容：海量经验及宝珠碎片。
		</description>
		<dialogue>
			<brief>每日副本之魔月峡谷，开启等级66级，每日可进入两次，奖励内容：海量经验及宝珠碎片。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>每天两次机会，每日零点刷新副本，每日必去之地。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="85" />
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
			<![CDATA[完成一次：#NPCLINK<STR:魔月峡谷,NPCKEYNAME:巫山城副本使节,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:屠夫,NPCKEYNAME:巫山城屠夫,MOVE:1>#]]>
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
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>