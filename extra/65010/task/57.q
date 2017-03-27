<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="57" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#除魔称号" type="1" suggest_level="1" visible="1" next_id="58">
		<script name="48_reward" />
		<description>
			对了，偷偷告诉你个秘密，除魔达到一定数量可以获得霸气的称号，称号可以大幅提升你的能力哦。去看看吧。
		</description>
		<dialogue>
			<brief>对了，偷偷告诉你个秘密，除魔达到一定数量可以获得霸气的称号，称号可以大幅提升你的能力哦。去看看吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>及时升级称号，对你的帮助可是很大的哦，所以别忘记了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="55" />
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
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>