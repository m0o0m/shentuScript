<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4008" name="[日常]-石甲鱼串烧" type="3" suggest_level="1" visible="1" next_id="4009">
		<description>
			我需要很多石甲鱼，每10只石甲鱼制作成食物后，我会给你一份，所以，多抓些石甲鱼吧。\n
		</description>
		<dialogue>
			<brief>我需要很多石甲鱼，每10只石甲鱼制作成食物后，我会给你一份，所以，多抓些石甲鱼吧。\n</brief>
			<await>至少10只石甲鱼才可以制作成食物，你有吗？\n</await>
			<finish>看样子你的收获不错，你还可以继续再多弄些来。\n</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="45" max_num="100" />
			<prologues>
				<group>
					<prologue id="4007" />
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
			<![CDATA[前去消灭#LINK<MAP:海底1,POSX:74,POSY:144,STR:石甲鱼,MOVE:1>#，获得#COLORCOLOR_GREENG#新鲜的石甲鱼#COLOREND##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回海底入口,与#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="新鲜的石甲鱼"  n="10" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="0" >
			<awards>
				<award keyname="石甲鱼串烧"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>