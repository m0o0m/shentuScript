<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3026" name="[主线]-守护誓言" type="1" suggest_level="1" visible="1" next_id="3027">
		<script name="3026" />
		<description>
			你是响应守卫龙城的号召而来的吗？啊！穿越重重密林来到这里，一定遇到过很多困难吧！\n　　我非常高兴你能如此选择，不过，你的实力有待提升呀，要知道在龙城即使最低级的恶魔，也要比你强大！\n　　你仍然坚持参与消灭恶魔、保护龙城的战斗？即使付出生命也再所不惜吗？那么，以人类永不屈服的斗志立下誓言吧！
		</description>
		<dialogue>
			<brief>你是响应守卫龙城的号召而来的吗？啊！穿越重重密林来到这里，一定遇到过很多困难吧！\n　　我非常高兴你能如此选择，不过，你的实力有待提升呀，要知道在龙城即使最低级的恶魔，也要比你强大！\n　　你仍然坚持参与消灭恶魔、保护龙城的战斗？即使付出生命也再所不惜吗？那么，以人类永不屈服的斗志立下誓言吧！</brief>
			<await>那么，以人类永不屈服的斗志立下誓言吧！</await>
			<finish>只要拥有与恶魔决死一战的勇气，就是天藏大陆真正的守护者，也将获得天藏大陆所有子民的尊敬！\n　　从今以后，你将肩负起守护天藏的使命！也将走上一条充满荣光与荆棘的道路！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3025" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>