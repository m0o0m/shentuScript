<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3015" name="[主线]-打听药材" type="1" suggest_level="1" visible="1" next_id="3016">
		<description>
			你受了些小伤，去找药材商吧，他经营各种药材，如果随身带上一些，对你会大有帮助！
		</description>
		<dialogue>
			<brief>你受了些小伤，去找药材商吧，他经营各种药材，如果随身带上一些，对你会大有帮助！</brief>
			<await>药材商在杂货商旁边呢</await>
			<finish>不错，我这里有各种各样的药材。如果你帮我一个忙的话，我可以送你一些哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3012" />
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
			<![CDATA[与#NPCLINK<STR:药材商,NPCKEYNAME:新手村药材商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:药材商,NPCKEYNAME:新手村药材商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2300" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="超级金创药"  n="1" bind_require="1" />
				<award keyname="超级魔法药"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>