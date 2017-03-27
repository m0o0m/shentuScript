<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="13" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#奋力前行" type="1" suggest_level="1" visible="1" next_id="14">
		<script name="任务执行脚本" />
		<description>
			英雄这次全倚靠你了，等安全了，我愿意把自己挖的矿都给你。
		</description>
		<dialogue>
			<brief>英雄这次全倚靠你了，等安全了，我愿意把自己挖的矿都给你。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>多谢大爷搭救，我滴个妈呀，真的是太吓人了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="12" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:147,POSY:89,STR:爬地僵尸># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:乞讨者,NPCKEYNAME:矿洞乞讨者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="残肢僵尸" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>