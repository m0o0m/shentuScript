<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3287" name="[主线]-奇怪的老人(2)" type="1" suggest_level="1" visible="1" next_id="3288">
		<description>
			在采集珍珠的过程中，你还收集到了什么奇怪的东西吗？如果我认为有价值，我同样会给你报酬哦。没有呀……真可惜!那么，去替我采集5株生生草吧，如果你对我给的报酬感到满意的话。
		</description>
		<dialogue>
			<brief>在采集珍珠的过程中，你还收集到了什么奇怪的东西吗？如果我认为有价值，我同样会给你报酬哦。没有呀……真可惜!那么，去替我采集5株生生草吧，如果你对我给的报酬感到满意的话。</brief>
			<await>你还没有采集到足够的生生草~</await>
			<finish>你知道生生草的价值吗？这是制作疗伤药的极品药材呀。知道了吧，再给你点额外的报酬吧，虽然我认为告诉你这个消息已经完全足够了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3286" />
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
			<![CDATA[进入沉船一层,采集5株#LINK<MAP:海底1,POSX:125,POSY:63,STR:生生草,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[交采集到的生生草交给#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="生生草"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="330000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="奇怪的剑1"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>