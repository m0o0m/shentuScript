<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3288" name="[主线]-奇怪的老人(3)" type="1" suggest_level="1" visible="1" next_id="3289">
		<script name="3288" />
		<description>
			千百年来，无数的船只在海中沉没，所以，海底有着各种各样的物品。如果你能为我寻来5件海底陶罐，我有更珍贵的物品回报你哦。
		</description>
		<dialogue>
			<brief>千百年来，无数的船只在海中沉没，所以，海底有着各种各样的物品。如果你能为我寻来5件海底陶罐，我有更珍贵的物品回报你哦。</brief>
			<await>你还没有收集到足够的海底陶罐</await>
			<finish>这块蓝色的宝石就送给你吧，这是有人从海中怪物的身上获得得到的宝石。你看，它是如此晶莹美丽，如果能够制作成一串项链，送给心爱的人儿，可以收获一段美妙的爱情哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3287" />
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
			<![CDATA[进入沉船二层,收集5个#LINK<MAP:海底2,POSX:119,POSY:67,STR:海底陶罐,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[交收集到的海底陶罐交给#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="海底陶罐"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="530000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="蓝色宝石"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>