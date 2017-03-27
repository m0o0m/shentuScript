<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3128" name="[主线]-去巫山城" type="1" suggest_level="1" visible="1" next_id="3129">
		<description>
			巫山城的武馆教练委托老兵寻找一名强大的勇士，于是老兵向他推荐了我。据说武馆教练是一个非常值得尊敬的人，他为天藏大陆培养了很多勇敢的战士。那我就去巫山城走一趟吧
		</description>
		<dialogue>
			<brief>不久之前，巫山城的武馆教练委托我寻找一名强大的勇士，我向他推荐了你，你去找下他吧。武馆教练是一个非常值得尊敬的人，他为我们培养了很多勇敢的战士。
\n　　快点去吧，不要让他等久了。</brief>
			<await>别畏畏缩缩的，一点都不象平时的你啊</await>
			<finish>你是老兵找来的勇士吗？以他身经百战历练出来的眼力，我相信他推荐的人是合适的。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3127" />
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
			<![CDATA[去巫山城找#NPCLINK<STR:武馆教练,NPCKEYNAME:武馆教练场外,MOVE:1>#问问有什么事]]>
			</progressing>
			<accomplishing>
			<![CDATA[去巫山城找#NPCLINK<STR:武馆教练,NPCKEYNAME:武馆教练场外,MOVE:1>#问问有什么事]]>
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