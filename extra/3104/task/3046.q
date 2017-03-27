<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3046" name="[主线]-矿洞变故(2)" type="1" suggest_level="1" visible="1" next_id="3047">
		<script name="3046" />
		<description>
			现在，去查看矿洞吧，带回5份僵尸的腐肉，请务必小心！
		</description>
		<dialogue>
			<brief>现在，去查看矿洞吧，带回5份僵尸的腐肉，请务必小心！</brief>
			<await>收集5份僵尸的腐肉了吗。</await>
			<finish>堕落之气？好歹毒的阴谋，这种堕落之气，与僵尸的尸毒混合，可以生成另一种更霸道的毒气！幸好发现得早！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3045" />
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
				<trophy monster="爬尸1" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="腐尸1" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="尸卫1" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="爬尸2" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="腐尸2" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="僵尸1" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="雷暴僵尸1" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
				<trophy monster="雷暴僵尸2" item="僵尸的腐肉" min_num="1" max_num="1" bind_require="1" limit="5" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去矿洞入口击败#LINK<MAP:废弃矿洞1,POSX:27,POSY:64,STR:僵尸,MOVE:1>#获得僵尸的腐肉#ITEMGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="5" bind_require="1" >
					<group_item keyname="僵尸的腐肉" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="98000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>