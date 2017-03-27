<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5031" name="[支线]-绝路城守卫的请求（1）" type="2" suggest_level="1" visible="1" next_id="5032">
		<description>
			勇士请留步！绝路城门口的守卫，委托我寻找一位有实力勇士，我看你实力不错，有时间走一趟绝路城吗？
		</description>
		<dialogue>
			<brief>勇士请留步！绝路城门口的守卫，委托我寻找一位有实力勇士，我看你实力不错，有时间走一趟绝路城吗？</brief>
			<await>前往绝路城与绝路城守卫对话。</await>
			<finish>总算等到来人了！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3125" />
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
			<![CDATA[前往绝路城东部，与#NPCLINK<STR:绝路城守卫,NPCKEYNAME:绝路城守卫,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往绝路城东部，与#NPCLINK<STR:绝路城守卫,NPCKEYNAME:绝路城守卫,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>