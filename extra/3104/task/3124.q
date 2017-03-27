<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3124" name="[主线]-找寻魔化之心" type="1" suggest_level="1" visible="1" next_id="3125">
		<description>
			武斗场使者怀疑在黑面牛魔的身上，肯定会找到魔化之心。再去绝路城走一趟吧。
		</description>
		<dialogue>
			<brief>啊！必是黑面牛魔无疑！辛苦你再跑一趟吧，我想，在黑面牛魔的身上，你肯定会找到魔化之心！我们需要验证一下！</brief>
			<await>怎么会没发现魔化之心呢？你再去仔细搜索一下吧</await>
			<finish>不错，这就是魔化之心，这正是牛族魔化的关键！它可以源源不断地产生邪恶之力，好歹毒的计划！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3123" />
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
				<trophy monster="黑面牛魔1" item="魔化之心" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="精英黑面牛魔1" item="魔化之心" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="超级黑面牛魔1" item="魔化之心" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
				<trophy monster="挖肉黑面牛魔1" item="魔化之心" min_num="1" max_num="1" bind_require="1" limit="1" chance="5500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去绝路城杀死#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:294,POSY:495,STR:黑面牛魔,MOVE:1>##COLOREND#，从它们身上找到魔化之心#ITEMGROUP0#带回来]]>
			</progressing>
			<accomplishing>
			<![CDATA[把魔化之心交给巫山城的#NPCLINK<STR:武斗场使者,NPCKEYNAME:武斗场使者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="魔化之心" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>