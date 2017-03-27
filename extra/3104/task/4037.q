<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4037" name="[支线]-驯兽达人（2）" type="2" suggest_level="1" visible="1" next_id="4038">
		<description>
			捕捉野马只是第一步，在捕捉野马之后，还需要一道开光的工序，可以使野马成为可以骑乘的坐骑，并且拥有额外的属性加成。开光需要使用开光印哦，不要怕消耗，你开光一次，我会奖励你两个开光印哦！来吧，尝试一次。
		</description>
		<dialogue>
			<brief>捕捉野马只是第一步，在捕捉野马之后，还需要一道开光的工序，可以使野马成为可以骑乘的坐骑，并且拥有额外的属性加成。开光需要使用开光印哦，不要怕消耗，你开光一次，我会奖励你两个开光印哦！来吧，尝试一次。</brief>
			<await>点击驯兽师，打开驯兽师面板；点击坐骑开光……。</await>
			<finish>不错，表现非常好。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4036" />
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
			<![CDATA[点击#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#，打开#COLORCOLOR_GOLD#坐骑开光#COLOREND#面板，为一只坐骑#ITEMGROUP0#开光。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="疾风" />
					<group_item keyname="绝影" />
					<group_item keyname="汗血宝马" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="30000" >
			<awards>
				<award keyname="绝影(未开光)"  n="1" bind_require="0" />
				<award keyname="开光印"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>