<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4023" name="[支线]-秘海封印" type="2" suggest_level="1" visible="1">
		<script name="4023" />
		<description>
			海角秘境的怪物蠢蠢欲动，准备冲破封印出来，天藏大陆的怪物们得知此消息，主动派出先遣部队帮助海角秘境的妖魔冲击封印。我需要你立刻进入秘海封印之地，查看封印是否还健全，如果时间足够，请建造起一道防线，防止怪物冲破封印,传闻冲击封印的怪物携带着大量经验宝珠，如果获取到经验宝珠对自己实力的提升有很大的帮助，成功守住怪物的冲击后，守护者会出现在秘海封印之地，到时候他会给予我更多的奖励
		</description>
		<dialogue>
			<brief>海角秘境的怪物蠢蠢欲动，准备冲破封印出来，天藏大陆的怪物们得知此消息，主动派出先遣部队帮助海角秘境的妖魔冲击封印。我需要你立刻进入秘海封印之地，查看封印是否还健全，如果时间足够，请建造起一道防线，防止怪物冲破封印。</brief>
			<await>点击我传送入秘海封印</await>
			<finish>封印还在吗，呼~~这下总算能安心了，非常感谢你的帮助，以后你每天都可以到我这里来进入一次秘海封印之地，在阻止怪物冲破封印的同时，也能使你快速成长。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="20" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[通过#NPCLINK<STR:秘境守护者,NPCKEYNAME:秘境守护者龙城,MOVE:1>#进入秘海封印查看封印神石是否安全]]>
			</progressing>
			<accomplishing>
			<![CDATA[尝试建造起一道防线阻止怪物冲破神石，据说怪物可以掉落大量经验丹，成功阻止怪物后，在秘海封印之地内找#NPCLINK<STR:秘境守护者,NPCKEYNAME:秘境守护者场内,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>