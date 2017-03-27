<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3033" name="[主线]-债务纠纷(2)" type="1" suggest_level="1" visible="1" next_id="3034">
		<description>
			向天机老人打听，寄售商人所说是否是真的。
		</description>
		<dialogue>
			<brief>前一段时间，恶魔袭击龙城，我已经捐献了一笔钱，用于购买物资支持龙城的建设。当然，如果能稍微宽限几天，我还是能够还债的！你可以去询问驯兽师，我们是一起捐赠的。</brief>
			<await>向驯兽师打听寄售商人所说是否真实。</await>
			<finish>想不到这里面居然还有这些关节！不错，前段时间我与寄售商确实捐赠了一笔钱，用于支援龙城守卫与建议。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3032" />
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
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="31000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>