<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3275" name="[主线]-藏宝阁守护人的笔记(3)" type="1" suggest_level="1" visible="1" next_id="3276">
		<description>
			啊，……你不要走哇！\n　　呃…呃…，那个，我的法杖不见，你去帮我找回来了吧。不准问，快去啦！就是那群怪物抢去了！
		</description>
		<dialogue>
			<brief>啊，……你不要走哇！\n　　呃…呃…，那个，我的法杖不见，你去帮我找回来了吧。不准问，快去啦！就是那群怪物抢去了！</brief>
			<await>哼，连根法杖都长不到，还说帮我的忙，我看你也没什么本事呀~</await>
			<finish>啊，我的法杖！我的法杖！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3304" />
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
				<trophy monster="石甲鱼1" item="小诗月的法杖" min_num="1" max_num="1" bind_require="1" limit="1" chance="1400" />
				<trophy monster="铁棘鱼1" item="小诗月的法杖" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="铁螯怪1" item="小诗月的法杖" min_num="1" max_num="1" bind_require="1" limit="1" chance="1600" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[击杀秘境沉船一层的怪物,找到小诗月的法杖#ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将法杖还给#NPCLINK<STR:小诗月,NPCKEYNAME:小诗月,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="小诗月的法杖"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="780000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>