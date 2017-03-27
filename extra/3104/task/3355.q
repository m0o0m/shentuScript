<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3355" name="[主线]-大海奇石" type="1" suggest_level="1" visible="1" next_id="3356">
		<description>
			等等，我感觉到了一股特别的力量！这是一块神奇的矿石，在你的背包中，你可以拿出来给我看看吗？
		</description>
		<dialogue>
			<brief>等等，我感觉到了一股特别的力量！这是一块神奇的矿石，在你的背包中，你可以拿出来给我看看吗？</brief>
			<await>~</await>
			<finish>无量大海，死生澎湃！这是……海魂石！你居然可以得到如此神奇的矿石！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3354" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="海魂石"  n="1" bind_require="2" />
			</items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[继续与龙城#NPCLINK<STR:铁匠,NPCKEYNAME:龙城铁匠,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[继续与龙城#NPCLINK<STR:铁匠,NPCKEYNAME:龙城铁匠,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>