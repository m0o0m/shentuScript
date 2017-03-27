<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3321" name="[主线]-来自古代的留言(1)" type="1" suggest_level="1" visible="1" next_id="3322">
		<description>
			“j*u444^^k@Ehh****^……”\n　　上面的文字难以辨认，但可以确认是人类使用的文字。抄下来,回去寻找天机老人问问吧。
		</description>
		<dialogue>
			<brief>“j*u444^^k@Ehh****^……”\n　　上面的文字难以辨认，但可以确认是人类使用的文字。抄下来,回去寻找天机老人问问吧。</brief>
			<await>回龙城找天机老人问问</await>
			<finish>确实是人类的文字，而且，还是消失了的刺客暗语。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3320" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="誊写件"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[回到龙城，与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到龙城，与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="誊写件"  n="1" bind_require="1" />
			</items>
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