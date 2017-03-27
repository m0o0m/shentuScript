<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3025" name="[主线]-仓库管理员的委托" type="1" suggest_level="1" visible="1" next_id="3040">
		<description>
			到巫山城后找到天机老人，请帮我告诉他，我已经准备了一批支援龙城建设的物质，请他派人来取吧！
		</description>
		<dialogue>
			<brief>你要去巫山城了吗？真是太好了，我正有一件事拜托你。不要怕麻烦，很小很小的一件小事哦，完全顺路嘛。\n　　是这样哦，到巫山城后找到天机老人，请帮我告诉他，我已经准备了一批支援龙城建设的物质，请他派人来取吧！</brief>
			<await>请在巫山城寻找天机老人。</await>
			<finish>真是太好了，龙城正急需各种物质！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3024" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="21000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>