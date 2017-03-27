<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3237" name="[主线]-阻止恶魔的阴谋(1)" type="1" suggest_level="1" visible="1" next_id="3238">
		<description>
			我快…不行了，不…用…白费力气，…告诉……老兵，天魔与邪庙…勾结，要…袭击…东…临城！
		</description>
		<dialogue>
			<brief>我快…不行了，不…用…白费力气，…告诉…老兵，天魔与邪庙…勾结，要…袭击…东…临城！</brief>
			<await>去找东临城的老兵报告情况。</await>
			<finish>又一个兄弟牺牲了！该死的天魔，我总有一天要将它们全部烧死！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3249" />
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
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>