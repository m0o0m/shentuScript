<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3140" name="[主线]-被偷走的笔记" type="1" suggest_level="1" visible="1" next_id="3141">
		<description>
			魔语尊者关于封印魔法阵的研究笔记不见了，这绝不会是个意外，里面的内容是绝密，不能被妖魔所了解，去找老兵打听一下，最近有没有什么奇怪的事情发生。
		</description>
		<dialogue>
			<brief>我的关于封印魔法阵的研究笔记不见了，我想这绝不会是个意外，因为我的笔记保管的很严密，普通人根本无法窃取，一定是有实力的人偷走的，你一定要帮我找回啊。\n　　老兵是万事通，也许他能够提供一点线索，你帮我去问问他吧。</brief>
			<await>老兵怎么说的啊？</await>
			<finish>偷窃！？那一定是那群堕落的人类，一天前的晚上，有几名堕落人类潜入了龙城并且惊动了守卫，但是他们武力高强，迅速逃离了。看他们离去的方向，一定是邪庙里的那群坠落的人们。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3139" />
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
			<![CDATA[去找龙城的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#咨询一下最近有没有什么异常情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找龙城的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#咨询一下最近有没有什么异常情况]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>