<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3297" name="[主线]-镇店之宝" type="1" suggest_level="1" visible="1" next_id="3305">
		<script name="3297" />
		<description>
			什么叫镇店之宝？这就是！这可是全大陆最漂亮的项链，没有之一！\n　　虽然我是商人，但这件珍宝，可不是金币就能买到的。我听说最新发现的海角秘境中，秘境歌妖有一种竖琴可以在风中发出美妙的音乐，如果你可以为我弄来，这件星光灿烂可以送给你。
		</description>
		<dialogue>
			<brief>什么叫镇店之宝？这就是！这可是全大陆最漂亮的项链，没有之一！\n　　虽然我是商人，但这件珍宝，可不是金币就能买到的。我听说最新发现的海角秘境中，秘境歌妖有一种竖琴可以在风中发出美妙的音乐，如果你可以为我弄来，这件星光灿烂可以送给你。</brief>
			<await>还没有找到秘境歌妖的竖琴吗？</await>
			<finish>客人真是豪爽，现在这件星光灿烂便是属于你了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3296" />
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
				<trophy monster="秘境歌妖1" item="秘境歌妖的竖琴" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="精英秘境歌妖1" item="秘境歌妖的竖琴" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="超级秘境歌妖1" item="秘境歌妖的竖琴" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去海角秘境，从#LINK<MAP:海底3,POSX:69,POSY:134,STR:秘境歌妖,MOVE:1>#身上找到一把#LINK<MAP:海底3,POSX:69,POSY:134,STR:秘境歌妖的竖琴,MOVE:1>##ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城#NPCLINK<STR:首饰商,NPCKEYNAME:巫山城首饰商,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="秘境歌妖的竖琴"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="235000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="星光灿烂"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>