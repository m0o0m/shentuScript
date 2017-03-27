<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3357" name="[主线]-修复的希望 " type="1" suggest_level="1" visible="1" next_id="3358">
		<description>
			你说有一种可以修复我的剑的办法吗？虽然不敢确定，但我也愿意一试！拜托了，这是我的剑，请尽量而为了吧！
		</description>
		<dialogue>
			<brief>你说有一种可以修复我的剑的办法吗？虽然不敢确定，但我也愿意一试！拜托了，这是我的剑，请尽量而为了吧！</brief>
			<await>剑已拿到，快去找铁匠吧~</await>
			<finish>剑先给我，先让我看看剑吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3356" />
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
		<rewards exp="210000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>