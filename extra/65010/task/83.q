<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="83" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#矿物的抢夺" type="1" suggest_level="1" visible="1" next_id="84">
		<script name="任务执行脚本" />
		<description>
			矿物，是个好东西，里面存在某种特殊的东西，想不想试试看？只要你给我8个任意矿物，我就给你3个金砖。
		</description>
		<dialogue>
			<brief>矿物，是个好东西，里面存在某种特殊的东西，想不想试试看？只要你给我8个任意矿物，我就给你3个小金条。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>每日2次机会，每次3块小金条，海量金币不容错过。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="82" />
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
			<![CDATA[上缴 #NPCLINK<STR:8块任意矿石,NPCKEYNAME:巫山城矿主,MOVE:1># #ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:矿主,NPCKEYNAME:巫山城矿主,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="8" bind_require="2" >
					<group_item keyname="黑铁矿" />
					<group_item keyname="黄金矿" />
					<group_item keyname="白银矿" />
					<group_item keyname="青铜矿" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>