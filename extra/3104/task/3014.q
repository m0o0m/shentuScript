<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3014" name="[主线]-带血迹的玉佩(2)" type="1" suggest_level="1" visible="1" next_id="3015">
		<script name="3014" />
		<description>
			村子周围突然出现无数的木器人，也许从它们身上可以找到线索。
		</description>
		<dialogue>
			<brief>村子周围突然出现无数的木器人，也许从它们身上可以找到线索。</brief>
			<await>从木器人身上寻找线索吧！</await>
			<finish>这是我送给丈夫的定情信物，他一直随身佩戴……他竟然真的被害了！（悲伤地哭泣……）\n　　勇士，谢谢你帮我找回我丈夫的遗物，这是我的感激的心意！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3013" />
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
				<trophy monster="木器人" item="带血迹的玉佩" min_num="1" max_num="1" bind_require="1" limit="1" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在村子附近击败#LINK<MAP:新手村,POSX:186,POSY:162,STR:木器人,MOVE:1>#获得带血迹的玉佩#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:首饰商,NPCKEYNAME:新手村首饰商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="带血迹的玉佩" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2800" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="黄金项链"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>