<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3324" name="[主线]-来自古代的留言(4)" type="1" suggest_level="1" visible="1" next_id="3325">
		<description>
			咦！这是一位刺客前辈的留言：“这只强大的海妖吞食了光球，在光芒迸射中变成了拥有多只触手的魔物……”\n　　“四周能量翻滚，似乎有强大的力量在此凝聚，所有海妖，包括我在内都感受到了力量在迅速提升……”\n　　“变成魔物的海妖，准备将光球的力量赐予其它海妖……”\n　　这！竟是……！\n　　这是我的翻译的信件，拿去给外面的远征军统领吧。
		</description>
		<dialogue>
			<brief>咦！这是一位刺客前辈的留言：“这只强大的海妖吞食了光球，在光芒迸射中变成了拥有多只触手的魔物……”\n　　“四周能量翻滚，似乎有强大的力量在此凝聚，所有海妖，包括我在内都感受到了力量在迅速提升……”\n　　“变成魔物的海妖，准备将光球的力量赐予其它海妖……”\n　　这！竟是……！\n　　这是我的翻译的信件，拿去给外面的远征军统领吧。</brief>
			<await>翻译件还没有交给远征军统领吗?</await>
			<finish>这位刺客前辈留下的海兽皮上，说明了海妖吞食生死轮图碎片后发生的事情。果然，是生死轮图的碎片，促成了海妖一族的巨变！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3323" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="翻译件"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[回到海底入口,将翻译件交给#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口,将翻译件交给#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="翻译件"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>