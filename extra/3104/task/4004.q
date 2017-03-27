<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4004" name="[支线]-美妙的歌声(2)" type="2" suggest_level="1" visible="1">
		<description>
			啦啦啦啦啦……哩哩哩……嗯哼……\n　　我是一个快乐的女孩子，最喜欢唱歌了，每天起来，我都要高歌一曲，人人都夸赞我歌唱得好，人也长得美。\n　　可是，我最近听说，有人遇见了一种歌妖，它们上半身长得像美女，下半身却是鱼的身子，唱起歌来，十分的好听，让人动心不已，我也好想听听啊。\n　　可是那里凶险无比，我只是个柔弱的女孩子，不能去那么危险的地方，不过我有一个祖传的集音盒，可以将歌妖的歌声收集起来，勇士，你能帮帮我吗？让我也能听到这么美妙的歌声。\n
		</description>
		<dialogue>
			<brief>啦啦啦啦啦……哩哩哩……嗯哼……\n　　我是一个快乐的女孩子，最喜欢唱歌了，每天起来，我都要高歌一曲，人人都夸赞我歌唱得好，人也长得美。\n　　可是，我最近听说，有人遇见了一种歌妖，它们上半身长得像美女，下半身却是鱼的身子，唱起歌来，十分的好听，让人动心不已，我也好想听听啊。\n　　可是那里凶险无比，我只是个柔弱的女孩子，不能去那么危险的地方，不过我有一个祖传的集音盒，可以将歌妖的歌声收集起来，勇士，你能帮帮我吗？让我也能听到这么美妙的歌声。\n</brief>
			<await>你怎么能拒绝，我这么一个美丽可爱的女孩子的要求呢？\n</await>
			<finish>多么美妙，多么动听，就像是风儿吹拂，又像是清水涤荡过心灵，喔，我太陶醉了……\n　　勇士，多谢你的帮助，我现在才知道，世界上居然还有这么美妙动听的声音。\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="100" />
			<prologues>
				<group>
					<prologue id="4003" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="集音盒"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[前往#LINK<MAP:海底3,POSX:68,POSY:133,STR:秘境沉船三层,MOVE:1>#，使用物品#COLORCOLOR_GREENG#集音盒#COLOREND#收集的秘境歌妖的歌声。]]>
			</progressing>
			<accomplishing>
			<![CDATA[你已经收集好了秘境歌妖的歌声，回东临城交给#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#吧。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="集音盒(完成)"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>