<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="6" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#临阵变故" type="1" suggest_level="1" visible="1" next_id="7">
		<script name="任务执行脚本" />
		<description>
			此地多人受困，眼下我消耗过度，剩下的只能靠你了，切记把涉险之人尽数救出。
		</description>
		<dialogue>
			<brief>此地多人受困，眼下我消耗过度，剩下的只能靠你了，切记把涉险之人尽数救出。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>刚才真的是吓死我了。谢谢英雄搭救。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="5" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:68,POSY:129,STR:蝎子># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:迷失的少女,NPCKEYNAME:矿洞迷失的少女>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="蝎子" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="6000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>