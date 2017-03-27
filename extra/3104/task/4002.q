<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4002" name="[支线]-委托(2)" type="2" suggest_level="1" visible="1">
		<description>
			我是一个流浪者，可谁说流浪者就没有家呢？我的家乡就在海中。\n　　每天我都喜欢眺望大海，还喜欢去海里摸鱼，采集海藻，拣拾牡蛎，幸运的时候，还能弄到些珍珠。\n　　自从来到这儿，我就再没有见到那些东西了……\n　　正好现在发现了海角秘境，如果你能给我弄来带来一些生生草和珊瑚，我会给你报酬的。\n　　我听说，生生草就在秘境沉船第一层进入第二层的入口处，铁螯怪和巨钳蟹总喜欢钳下珊瑚，用来磨爪子。
		</description>
		<dialogue>
			<brief>我是一个流浪者，可谁说流浪者就没有家呢？我的家乡就在海中。\n　　每天我都喜欢眺望大海，还喜欢去海里摸鱼，采集海藻，拣拾牡蛎，幸运的时候，还能弄到些珍珠。\n　　自从来到这儿，我就再没有见到那些东西了……\n　　正好现在发现了海角秘境，如果你能给我弄来带来一些生生草和珊瑚，我会给你报酬的。\n　　我听说，生生草就在秘境沉船第一层进入第二层的入口处，铁螯怪和巨钳蟹总喜欢钳下珊瑚，用来磨爪子。</brief>
			<await>需要一些生生草和珊瑚……\n</await>
			<finish>呜呜……家乡的味道！你真是我的朋友，这些符文是我的一点心意，请收下吧。\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="100" />
			<prologues>
				<group>
					<prologue id="4001" />
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
				<trophy monster="铁螯怪1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="3333" />
				<trophy monster="超级铁螯怪1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="精英铁螯怪1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="巨钳蟹1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="3333" />
				<trophy monster="超级巨钳蟹1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="精英巨钳蟹1" item="珊瑚" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[前往#LINK<MAP:海底1,POSX:115,POSY:105,STR:秘境沉船一层,MOVE:1>#，采集5个#LINK<MAP:海底1,POSX:123,POSY:63,STR:生生草,MOVE:1>##ITEMGROUP0#，杀死#COLORCOLOR_GREENG#铁螯怪#COLOREND#或#COLORCOLOR_GREENG#巨钳蟹#COLOREND#得到10个#LINK<MAP:海底1,POSX:74,POSY:144,STR:珊瑚,MOVE:1>##ITEMGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回东临城与#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="5" bind_require="2" >
					<group_item keyname="生生草" />
				</group>
				<group n="10" bind_require="1" >
					<group_item keyname="珊瑚" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="符文"  n="15" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>