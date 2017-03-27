<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#寻找源头" type="1" suggest_level="1" visible="1" next_id="11">
		<script name="任务执行脚本" />
		<description>
			小子，胆量不错，嗝……对了你有酒吗？没有！？那你走吧。
		</description>
		<dialogue>
			<brief>小子，胆量不错，嗝……对了你有酒吗？没有！？那你走吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>年轻人，实力尚可。能到这里足以证明你非等闲之辈了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="9" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:106,POSY:91,STR:矿洞飞蛾># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:云游散人,NPCKEYNAME:矿洞云游散人>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="山洞蝙蝠" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="10000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>