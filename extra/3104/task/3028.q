<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3028" name="[主线]-套装的秘密(2)" type="1" suggest_level="1" visible="1" next_id="3030">
		<script name="3028" />
		<description>
			如果在那群该死的猴子喝掉我的美酒之前，你能帮我找回至少2坛美酒，我便送一件套装的部件给你！
		</description>
		<dialogue>
			<brief>如果在那群该死的猴子喝掉我的美酒之前，你能帮我找回至少2坛美酒，我便送一件套装的部件给你！</brief>
			<await>从城外顽猴的身上，找回被偷走的美酒。</await>
			<finish>这么快就回来了，年青人跑得可真是快呀！好吧，这可是我珍藏多年的神秘装备哦，既然被天机老鬼知道了，我就知道肯定藏不住了，就送给你吧！\n　　唉，酒啊，越来越少了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3027" />
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
				<trophy monster="顽猴" item="美酒" min_num="1" max_num="1" bind_require="1" limit="2" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在村子附近击败#LINK<MAP:巫山城,POSX:400,POSY:210,STR:顽猴,MOVE:1>##MONSTERGROUP0#获得2坛美酒#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="2" bind_require="2" >
					<group_item keyname="美酒" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="36000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>