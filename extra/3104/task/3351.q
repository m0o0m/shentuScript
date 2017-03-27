<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3351" name="[主线]-奇怪的剑" type="1" suggest_level="1" visible="1" next_id="3352">
		<description>
			勇士，等等！我看到你背包中有一把奇怪的剑！能够给我看看吗？
		</description>
		<dialogue>
			<brief>勇士，等等！我看到你背包中有一把奇怪的剑！能够给我看看吗？</brief>
			<await>你身上没有物品“奇怪的剑”~</await>
			<finish>真是太可惜了！这是一把死剑！可惜，可惜！\n　　我想，很久以前，这肯定是一把了不得的神剑！虽然如此，此剑中的锻造手法仍给我了很多启示，请收下这点心意吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3287" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="奇怪的剑1"  n="1" bind_require="1" />
			</items>
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
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="奇怪的剑2"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>