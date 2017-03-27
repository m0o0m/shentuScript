<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3127" name="[主线]-老兵的请求" type="1" suggest_level="1" visible="1" next_id="3128">
		<description>
			听闻老兵过来找过自己，去老兵那里看看他有什么事吧
		</description>
		<dialogue>
			<brief>对了，刚才老兵过来找过你，你过去看看他有什么事吧</brief>
			<await>快去找老兵吧，他就在广场中间</await>
			<finish>英雄，请暂留步！你在多次战斗中展现了非凡的实力，我已经多次听说过你的大名。正好，你要去巫山城吗？不去？不去也没关系，因为我要拜托你去一趟那里~</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3126" />
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
			<![CDATA[去问问龙城的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#找自己有什么事]]>
			</progressing>
			<accomplishing>
			<![CDATA[去问问龙城的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#找自己有什么事]]>
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