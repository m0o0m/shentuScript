<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3235" name="[主线]-可怕的谣言(5)" type="1" suggest_level="1" visible="1" next_id="3236">
		<description>
			拜托你将你了解到的消息转告东临城的老兵吧，他知道真相后，会澄清流言的。
		</description>
		<dialogue>
			<brief>拜托你将你了解到的消息转告东临城的老兵吧，他知道真相后，会澄清流言的。</brief>
			<await>去找东临城老兵澄清真相。</await>
			<finish>原来是这样，关于流言的事情，我会解决的。对了，那只上半身为人身，下半身蜘蛛的怪物，居然如此恐怖，你以后可以小心了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3234" />
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
			<![CDATA[找#NPCLINK<STR:东临城老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:东临城,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>