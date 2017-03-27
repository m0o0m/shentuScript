<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3012" name="[主线]-初闻首饰" type="1" suggest_level="1" visible="1" next_id="3015">
		<description>
			如果没有良好的防御，可是很容易受到伤害的呀！如果再加上首饰商的首饰，防御的效果会更好！先去首饰商那看看吧。
		</description>
		<dialogue>
			<brief>如果没有良好的防御，可是很容易受到伤害的呀！如果再加上首饰商的首饰，防御的效果会更好！先去首饰商那看看吧。</brief>
			<await>首饰商就在村里哦，很容易找的。</await>
			<finish>在我这里可以得到各种实用的首饰哦，但作为新手的你，应该没有足够的金币吧？如果你能帮我一个忙的话，我可以送你一批首饰。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3011" />
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
			<![CDATA[与#NPCLINK<STR:首饰商,NPCKEYNAME:新手村首饰商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:首饰商,NPCKEYNAME:新手村首饰商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1680" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>