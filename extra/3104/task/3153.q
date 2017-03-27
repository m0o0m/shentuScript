<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3153" name="[主线]-藏宝阁传说" type="1" suggest_level="1" visible="1" next_id="3154">
		<description>
			我已经知道你想尽快提升实力，既然如此，那就一定要去藏宝阁！那里面有着稀世的宝物。终极技能、稀有坐骑、灵元珠……很多可是有钱都买不到哦！对于提升实力来说，木人巷更是不得不去！你想进去探索吗？当然，藏宝阁并不是随意就可以进出的，正好它需要的时之沙砾我已经送给你了！
		</description>
		<dialogue>
			<brief>我已经知道你想尽快提升实力，既然如此，那就一定要去藏宝阁！那里面有着稀世的宝物。终极技能、稀有坐骑、灵元珠……很多可是有钱都买不到哦！对于提升实力来说，木人巷更是不得不去！你想进去探索吗？当然，藏宝阁并不是随意就可以进出的，正好它需要的时之沙砾我已经送给你了！</brief>
			<await>探索藏宝阁需要使用时之沙砾在我这兑换探索时间哦！当然，直接用元宝购买也行！</await>
			<finish>为提升实力而来的少年，你没有找错人，我守护的藏宝阁，不仅仅可以提升你的实力。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3152" />
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
			<![CDATA[与#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#对话，了解藏宝阁的情况。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#对话，了解藏宝阁的情况。]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>