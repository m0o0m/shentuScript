<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3308" name="[主线]-五行的秘密(2)" type="1" suggest_level="1" visible="1" next_id="3309">
		<description>
			人类中没有人比我更了解生死轮图，因为我守护的引灵寺，最初便是生死轮图控制下引渡生灵轮回之地。之所以出现蓝色晶体，是因为生死轮图的碎片，有转化提纯各种能量的功效。\n　　看来，这些海妖的力量应该是五行之水，而生死轮图的碎片，就是他们力量的源泉。你将这些情报，回告天机老人吧。
		</description>
		<dialogue>
			<brief>人类中没有人比我更了解生死轮图，因为我守护的引灵寺，最初便是生死轮图控制下引渡生灵轮回之地。之所以出现蓝色晶体，是因为生死轮图的碎片，有转化提纯各种能量的功效。\n　　看来，这些海妖的力量应该是五行之水，而生死轮图的碎片，就是他们力量的源泉。你将这些情报，回告天机老人吧。</brief>
			<await>与龙城天机老人对话</await>
			<finish>敌人强大不可怕，可怕的是对敌人一无所知，现在，我们总算对局势有一个大致的把握了。谢谢你的努力，当我们找到战胜海妖的方法后一定还会找你，这是给你的报酬！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3307" />
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
			<![CDATA[与龙城#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="325000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="灵元珠"  n="5" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>