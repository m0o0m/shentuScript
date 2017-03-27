<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4033" name="[支线]-时之沙砾（1）" type="2" suggest_level="1" visible="1" next_id="4034">
		<description>
			进入藏宝阁必须先用元宝或时之沙砾兑换呆在藏宝阁内的时间，怎么获得元宝地球人都知道，但时之沙砾么，少不得我要跟你说声，记住了哦：所有杂货商处都有出售，你可以去看看。
		</description>
		<dialogue>
			<brief>进入藏宝阁必须先用元宝或时之沙砾兑换呆在藏宝阁内的时间，怎么获得元宝地球人都知道，但时之沙砾么，少不得我要跟你说声，记住了哦：所有杂货商处都有出售，你可以去看看。</brief>
			<await>找到任意一个杂货商。</await>
			<finish>时之沙砾本店就有出售，请自己查看货物单吧，很容易就能找到！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3153" />
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
			<![CDATA[找到龙城#NPCLINK<STR:杂货商,NPCKEYNAME:龙城杂货商>#，查看他出售的货物。]]>
			</progressing>
			<accomplishing>
			<![CDATA[找到龙城#NPCLINK<STR:杂货商,NPCKEYNAME:龙城杂货商>#，查看他出售的货物。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>