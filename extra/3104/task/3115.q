<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3115" name="[主线]-妖山暗穴的秘密（二）" type="1" suggest_level="1" visible="1" next_id="3116">
		<script name="3115" />
		<description>
			再去妖山暗穴走一趟，从妖面监工和鬼面监工身上搜寻一下，看看会得到什么东西
		</description>
		<dialogue>
			<brief>或许，那些监工身上会藏有这个谜题的答案，你再去一次，看看妖面监工和鬼面监工身上，会得到什么东西？</brief>
			<await>怎么样，找到什么东西了吗</await>
			<finish>山石精气！原来如此！这千年树魔，竟然在提炼山石精气！如今，他的实力必定更加强大了！一定要阻止他！否则，人类必定会多出一个难以匹敌的敌人！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3114" />
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
				<trophy monster="妖面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="妖面监工2" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="妖面监工3" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="鬼面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="鬼面监工2" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="鬼面监工3" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="超级妖面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="超级鬼面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉妖面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉妖面监工2" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉妖面监工3" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉鬼面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉鬼面监工2" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="挖肉鬼面监工3" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="精英妖面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
				<trophy monster="精英鬼面监工1" item="山石精气" min_num="1" max_num="1" bind_require="1" limit="2" chance="6800" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去妖山暗穴杀死#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:妖面监工,MOVE:1>##COLOREND#或者#COLORCOLOR_GREENG##LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:鬼面监工,MOVE:1>##COLOREND#获得2个山石精气#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去把发现告诉龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="2" bind_require="2" >
					<group_item keyname="山石精气" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>