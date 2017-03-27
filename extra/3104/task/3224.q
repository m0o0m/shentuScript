<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3224" name="[主线]-天魔石窟的秘密(1)" type="1" suggest_level="1" visible="1" next_id="3225">
		<description>
			我有一个困惑需要找人解开，你愿意帮我吗？据那些研究神战前历史的人说，在神战后期人类高手最终消失之地，是在天魔石窟哦。\n　　当年，为了发动对恶魔的致命一击，人类曾经集结了大批的高手，准备覆灭邪庙，不过，他们出发之后，再也没有消息传回呢。这之后发生了什么事，可就没人知道了。\n　　更多的情报你可以去找天机老人询问，我听说你们的关系特好！
		</description>
		<dialogue>
			<brief>我有一个困惑需要找人解开，你愿意帮我吗？据那些研究神战前历史的人说，在神战后期人类高手最终消失之地，是在天魔石窟哦。\n　　当年，为了发动对恶魔的致命一击，人类曾经集结了大批的高手，准备覆灭邪庙，不过，他们出发之后，再也没有消息传回呢。这之后发生了什么事，可就没人知道了。\n　　更多的情报你可以去找天机老人询问，我听说你们的关系特好！</brief>
			<await>从龙城天机老人身上了解更多。</await>
			<finish>你也是为了人类高手消失于天魔石窟这件传闻而来的吗？不，也许我说错了，这很可能不仅仅是传闻。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3223" />
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
			<![CDATA[找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#询问情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
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