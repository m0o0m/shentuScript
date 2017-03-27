<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4036" name="[支线]-驯兽达人（1）" type="2" suggest_level="1" visible="1" next_id="4037">
		<description>
			坐骑不仅可以让你更多地移动，而且还可以让你的实力变得更强（加成属性），因此，坐骑是每一个冒险者的不可缺少的伙伴。巫山城外的马场，常会出现许多野马，它们有着优秀的脚力，可以驯养为坐骑。我给你5根套索，你去捉一只野马回来吧。
		</description>
		<dialogue>
			<brief>坐骑不仅可以让你更多地移动，而且还可以让你的实力变得更强（加成属性），因此，坐骑是每一个冒险者的不可缺少的伙伴。巫山城外的马场，常会出现许多野马，它们有着优秀的脚力，可以驯养为坐骑。我给你5根套索，你去捉一只野马回来吧。</brief>
			<await>去巫山城外的马场捕捉一只野马。</await>
			<finish>不错，这么快就学会了捕捉野马了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4035" />
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
			<![CDATA[去#LINK<MAP:马场,POSX:78,POSY:93,STR:巫山城马场,MOVE:1>#捕捉一只野马#ITEMGROUP0#。提醒：捕捉野马的套索，杂货商处也有出售。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回巫山城与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="汗血(未开光)" />
					<group_item keyname="疾风(未开光)" />
					<group_item keyname="绝影(未开光)" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="疾风(未开光)"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>