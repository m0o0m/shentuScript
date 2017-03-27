<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3353" name="[主线]-死亡的剑" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			虽然剑被找回来了，但长久浸泡在海水之中，这把剑已经失去了原有灵性，太可惜了！\n　　一定有方法可以恢复的，我听说龙城的铁匠在这方面有着高深的技术，我能拜托你为我修复这把剑吗？
		</description>
		<dialogue>
			<brief>虽然剑被找回来了，但长久浸泡在海水之中，这把剑已经失去了原有灵性，太可惜了！\n　　一定有方法可以恢复的，我听说龙城的铁匠在这方面有着高深的技术，我能拜托你为我修复这把剑吗？</brief>
			<await>去寻找一名优秀的铁匠~</await>
			<finish>你已经找到这把剑的主人了呀，不过，上次我已经看过，我没有修复的办法！抱歉！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3352" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="奇怪的剑2"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[与龙城#NPCLINK<STR:铁匠,NPCKEYNAME:龙城铁匠,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:铁匠,NPCKEYNAME:龙城铁匠,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>