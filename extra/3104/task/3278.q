<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3278" name="[主线]-魔语尊者的笔记(2)" type="1" suggest_level="1" visible="1" next_id="3279">
		<description>
			我非常乐意我的研究成果被更多人知道，但是，必须先确定对方不是一个邪恶的人。我知道老兵对所有的冒险者都非常了解，如果你能拿到老兵对你的赞美信的话，你就可以拿走我的研究笔记了。
		</description>
		<dialogue>
			<brief>我非常乐意我的研究成果被更多人知道，但是，必须先确定对方不是一个邪恶的人。我知道老兵对所有的冒险者都非常了解，如果你能拿到老兵对你的赞美信的话，你就可以拿走我的研究笔记了。</brief>
			<await>没有确认信的话,我不是能借笔记给你的哦</await>
			<finish>你要借魔语尊者的研究笔记？这可是非常重要的资料。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3277" />
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
			<![CDATA[获得#NPCLINK<STR:龙城老兵,NPCKEYNAME:龙城老兵,MOVE:1>#关于你品性的确认信]]>
			</progressing>
			<accomplishing>
			<![CDATA[获得#NPCLINK<STR:龙城老兵,NPCKEYNAME:龙城老兵,MOVE:1>#关于你品性的确认信]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>