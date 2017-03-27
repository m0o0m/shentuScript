<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3352" name="[主线]-失落之剑" type="1" suggest_level="1" visible="1" next_id="3253">
		<description>
			英雄，能够遇上你真令人高兴。你知道吗？先祖曾是名闻大陆的英雄！只是，在一次任务中失踪了。当年，他接受任务守护一艘运送珍贵物品的巨船，但整艘船最后却失去了消息。\n　　我想，很可能是沉没了吧？真是令人悲伤的往事。我家祖传的一柄剑，也随之消失了……如果谁能替我找回那把剑，我相信我家也会出现一位名震天下的英雄！
		</description>
		<dialogue>
			<brief>英雄，能够遇上你真令人高兴。你知道吗？先祖曾是名闻大陆的英雄！只是，在一次任务中失踪了。当年，他接受任务守护一艘运送珍贵物品的巨船，但整艘船最后却失去了消息。\n　　我想，很可能是沉没了吧？真是令人悲伤的往事。我家祖传的一柄剑，也随之消失了……如果谁能替我找回那把剑，我相信我家也会出现一位名震天下的英雄！</brief>
			<await>~</await>
			<finish>啊！这把剑……！这把剑就是我家祖传的那柄剑！你看，这剑柄处还刻有“勇气”两个字呢！这可是我家族谱上有写的。真是太感激你了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3351" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="奇怪的剑2"  n="1" bind_require="1" />
			</items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[你发现背包中的剑,也许就是他正在寻找的宝剑,继续与#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#对话,看你有没有猜对]]>
			</progressing>
			<accomplishing>
			<![CDATA[你发现背包中的剑,也许就是他正在寻找的宝剑,继续与#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#对话,看你有没有猜对]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="135000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>