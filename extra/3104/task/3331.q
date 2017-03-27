<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3331" name="[主线]-消弥水之力的方法(1)" type="1" suggest_level="1" visible="1" next_id="3332">
		<description>
			秘境里的道家大师拜托我寻找你，请你去拜访他一趟。我想,大师应该找到最终的方法吧.
		</description>
		<dialogue>
			<brief>秘境里的道家大师拜托我寻找你，请你去拜访他一趟。我想,大师应该找到最终的方法吧.</brief>
			<await>道家大师正在找你,去找他一趟吧</await>
			<finish>我受托寻找破解海妖一族水之力的方法，现在终于有结果了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3326" />
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
			<![CDATA[进入海底沉船一层，与#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[进入海底沉船一层，与#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>