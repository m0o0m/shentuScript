<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3154" name="[主线]-探索藏宝阁" type="1" suggest_level="1" visible="1" next_id="3155">
		<description>
			藏宝阁有着稀世的宝物，诸如终极技能、稀有坐骑、灵元珠等等，都是有钱都买不到宝物！当然，说得再多，不如亲身进入其中一看，况且，藏宝阁内的传送人，会更有兴趣为你讲解。正好，你背包中的时之沙砾可以兑换进入藏宝阁的时间。你不会舍不得吧？
		</description>
		<dialogue>
			<brief>藏宝阁有着稀世的宝物，诸如终极技能、稀有坐骑、灵元珠等等，都是有钱都买不到宝物！当然，说得再多，不如亲身进入其中一看，况且，藏宝阁内的传送人，会更有兴趣为你讲解。正好，你背包中的时之沙砾可以兑换进入藏宝阁的时间。你不会舍不得吧？</brief>
			<await>进去吧，别等了，时间很宝贵！</await>
			<finish>欢迎来到藏宝阁大厅，这里就是藏宝阁内部空间，除了木人巷，还有藏经楼、异兽栏、珍宝洞、百草堂、修炼场、锁魔铝六个地方哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3153" />
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
			<![CDATA[使用#COLORCOLOR_GOLD#时之沙砾#COLOREND#兑换藏宝阁的探索时间，之后进入藏宝阁内的木人巷，与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[使用#COLORCOLOR_GOLD#时之沙砾#COLOREND#兑换藏宝阁的探索时间，之后进入藏宝阁内的木人巷，与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>