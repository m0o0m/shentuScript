<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3244" name="[主线]-阻止恶魔的阴谋(8)" type="1" suggest_level="1" visible="1" next_id="3245">
		<description>
			这就是已经炼制出来的解药，请立即送往东临吧，交给东临城老兵，告诉他融水后服下即可！
		</description>
		<dialogue>
			<brief>这就是已经炼制出来的解药，请立即送往东临吧，交给东临城的老兵，告诉他融水后服下即可！</brief>
			<await>请赶紧吧！越早服解药越好！</await>
			<finish>居然……居然全城人饮用的水出现了投毒事件！！太可怕了，是我们的疏忽导致了这么严重的后果，幸好你已经拿来了解药，否则真是万死难辞啊！我立即安排人服用解药！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3243" />
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
			<![CDATA[到东临城找#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="200000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>