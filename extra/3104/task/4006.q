<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4006" name="[支线]-海怪的钳子(2)" type="2" suggest_level="1" visible="1">
		<description>
			我最近新发现一种制作武器的方法。\n　　你知道吗？深海钳兽或者铁螯怪的钳子十分厉害，刀枪不入，且力大无穷，可以轻易地将铁甲和武器绞成碎片。我想弄些这种钳子来，研究如何将它们制作成武器。\n　　你……能帮我吗？\n
		</description>
		<dialogue>
			<brief>我最近新发现一种制作武器的方法。\n　　你知道吗？巨钳蟹或者铁螯怪的钳子十分厉害，刀枪不入，且力大无穷，可以轻易地将铁甲和武器绞成碎片。我想弄些这种钳子来，研究如何将它们制作成武器。\n　　你……能帮我吗？\n</brief>
			<await>你还没有给我带来巨钳蟹或者铁螯怪的钳子吗？\n</await>
			<finish>太棒了，这些钳子足够我研究了，我一定能打造出非同凡响的武器来！\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="100" />
			<prologues>
				<group>
					<prologue id="4005" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="巨钳蟹1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="3333" />
				<trophy monster="超级巨钳蟹1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="精英巨钳蟹1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="铁螯怪1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="3333" />
				<trophy monster="超级铁螯怪1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="精英铁螯怪1" item="海怪的钳子" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[前往#COLORCOLOR_GREENG#秘境沉船二层#COLOREND#，消灭#LINK<MAP:海底2,POSX:140,POSY:70,STR:巨钳蟹和铁螯怪,MOVE:1>#，取得#COLORCOLOR_GREENG#海怪的钳子#COLOREND##ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[你已经完成任务，回东临城见#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#吧。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="海怪的钳子"  n="20" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="235000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>