<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3280" name="[主线]-移交研究资料" type="1" suggest_level="1" visible="1" next_id="3281">
		<description>
			不是我吹嘘，在天藏大陆，关于神灵、天藏大陆秘史、生死轮图方面的资料，没有人比我和幻境引渡者更深入更详细。你拿到之后，要尽快交给天机老人哦，千万不要弄丢了。
		</description>
		<dialogue>
			<brief>不是我吹嘘，在天藏大陆，关于神灵、天藏大陆秘史、生死轮图方面的资料，没有人比我和幻境引渡者更深入更详细。你拿到之后，要尽快交给天机老人哦，千万不要弄丢了。</brief>
			<await>找交天机老人去吧！</await>
			<finish>这是极为珍贵的资料，想不到你居然能够借来，真是非常了不起。\n　　这里面有着关于神灵、天藏秘史、引灵寺起源、生死轮图等方面的研究和猜想，有了这些，找出一条新的路途应该不难。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3279" />
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
			<![CDATA[将资料交给#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将资料交给#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="幻境引渡者的笔记"  n="1" bind_require="1" />
				<item keyname="引灵尊者的笔记"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="420000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>