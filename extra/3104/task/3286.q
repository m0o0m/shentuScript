<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3286" name="[主线]-奇怪的老人(1)" type="1" suggest_level="1" visible="1" next_id="3287">
		<description>
			海洋是最大的宝藏，它将给每一个热爱它的人无限的财富。你相信吗？如果你能替我采集5颗珍珠，我会给你丰厚回报哦。
		</description>
		<dialogue>
			<brief>海洋是最大的宝藏，它将给每一个热爱它的人无限的财富。你相信吗？如果你能替我采集5颗珍珠，我会给你丰厚回报哦。</brief>
			<await>你没有采集到足够的珍珠~</await>
			<finish>珍珠很漂亮吧，那只是海洋对人类最廉价的赐予。当然，报酬还是要给你的。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3303" />
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
			<![CDATA[进入沉船一层,采集5颗#LINK<MAP:海底1,POSX:67,POSY:138,STR:珍珠,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[交采集到的珍珠交给#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="珍珠"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="280000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="海洋之书"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>