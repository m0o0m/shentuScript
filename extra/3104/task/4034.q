<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4034" name="[支线]-时之沙砾（2）" type="2" suggest_level="1" visible="1">
		<description>
			怎么样，在本店的货物单中可找到时之沙砾？说起来一个时之沙砾可以兑换藏宝阁半个小时的时间，可是非常划算哦。况且，绑定金币也可以购买时之沙砾呢。如果你购买一个时之沙砾作为礼物送给藏宝阁守护人，相信你会获得额外的好处！
		</description>
		<dialogue>
			<brief>怎么样，在本店的货物单中可找到时之沙砾？说起来一个时之沙砾可以兑换藏宝阁半个小时的时间，可是非常划算哦。况且，绑定金币也可以购买时之沙砾呢。如果你购买一个时之沙砾作为礼物送给藏宝阁守护人，相信你会获得额外的好处！</brief>
			<await>在杂货商处购买一个时之沙砾。</await>
			<finish>这其实只是一个考验而已，你送我一个时之沙砾，我会送你两个哦！现在明白怎么得到时之沙砾了吧。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="0" max_num="200" />
			<prologues>
				<group>
					<prologue id="4033" />
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
			<![CDATA[在任意杂货商处购买1个#COLORCOLOR_GOLD#时之沙砾#COLOREND##ITEM0#，将购买的时之沙砾送给#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[在任意杂货商处购买1个#COLORCOLOR_GOLD#时之沙砾#COLOREND##ITEM0#，将购买的#COLORCOLOR_GOLD#时之沙砾#COLOREND#送给#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="时之沙砾"  n="1" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="时之沙砾"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>