<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3207" name="[主线]-侦查天魔石窟(2)" type="1" suggest_level="1" visible="1" next_id="3208">
		<description>
			因为某些事，我已经潜伏在此很久了。这个石窟之内，聚集着大量来自另一个大陆的恶魔，所以我称它们为天魔。他们实力强大，即使是人类顶级的战士，也不能轻易的战胜它们；他们数量众多，虽然很少出现在天藏大陆，但是，即使倾人类之力也难以攻陷。你将此消息转告东临城吧。
		</description>
		<dialogue>
			<brief>因为某些事，我已经潜伏在此很久了。这个石窟之内，聚集着大量来自另一个大陆的恶魔，所以我称它们为天魔。他们实力强大，即使是人类顶级的战士，也不能轻易的战胜它们；他们数量众多，虽然很少出现在天藏大陆，但是，即使倾人类之力也难以攻陷。你将此消息告诉东临城吧。</brief>
			<await>将此消息转告东临城老兵！</await>
			<finish>我需要马上通告出去，这件事太严重了！最关键的，谢谢你！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3206" />
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
			<![CDATA[找东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#汇报情况]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>