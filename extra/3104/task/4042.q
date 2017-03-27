<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4042" name="[支线]-公平交换" type="2" suggest_level="1" visible="1">
		<script name="4042" />
		<description>
			真是英雄出少年啊，没有想到你这么快就到28级了，可惜28级之后的技能书越来越稀有，我这儿也是不多，不能随便出售。\n　　不过，你如果有其他职业28-30级的技能书，倒是可以与我公平交换。\n　　想要技能书，可以去废弃矿洞得到。
		</description>
		<dialogue>
			<brief>真是英雄出少年啊，没有想到你这么快就到28级了，可惜28级之后的技能书越来越稀有，我这儿也是不多，不能随便出售。\n　　不过，你如果有其他职业28-30级的技能书，倒是可以与我公平交换。\n　　想要技能书，可以去废弃矿洞得到。</brief>
			<await>你有其他职业的28-30级技能书吗？</await>
			<finish>我饱读诗书，做人向来公平，这本书你就拿去吧。\n　　记住，等你30级的时候再来找我吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="60" />
			<prologues>
				<group>
					<prologue id="4041" />
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
			<![CDATA[前往特产技能书的#LINK<MAP:废弃矿洞2,POSX:7,POSY:14,STR:废弃矿洞,MOVE:1>#，获得非本职业的28级#COLORCOLOR_GOLD#月弧弯刀#COLOREND#、30级#COLORCOLOR_GOLD#雷霆极光#COLOREND#、28级#COLORCOLOR_GOLD#锁妖咒#COLOREND#任意1本#ITEMGROUP0#，交给#COLORCOLOR_GOLD#书商#COLOREND#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:龙城书商,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="0" >
					<group_item keyname="月弧弯刀" />
					<group_item keyname="雷霆极光" />
					<group_item keyname="锁妖咒" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>