<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5048" name="[剧情]-血手的过往（3）" type="2" suggest_level="1" visible="1" next_id="5049">
		<description>
			血手曾是一个勇敢的战士，他坚持战斗在反抗恶魔的第一线，但是后来他消失在天荒阵中。当他再一次出现在人类面前时，他已经堕入了邪恶，他接爱了血禅师的力量，追求操纵血液能量的邪恶之路。明确记录在案的，当他从天荒阵中出来后，手上至少有二十一条人命。\n　　至于你问他亲人的遭遇，这我倒不清楚，你可以问问如今守护在东临城外的百夫长，当年消灭袭击那个村子的恶魔的军队，就是他带领的。
		</description>
		<dialogue>
			<brief>血手曾是一个勇敢的战士，他坚持战斗在反抗恶魔的第一线，但是后来他消失在天荒阵中。当他再一次出现在人类面前时，他已经堕入了邪恶，他接爱了血禅师的力量，追求操纵血液能量的邪恶之路。明确记录在案的，当他从天荒阵中出来后，手上至少有二十一条人命。\n　　至于你问他亲人的遭遇，这我倒不清楚，你可以问问如今守护在东临城外的百夫长，当年消灭袭击那个村子的恶魔的军队，就是他带领的。</brief>
			<await>去东临城外找百夫长了解情况。</await>
			<finish>是的，当年就是我带领兄弟们消灭了那批袭击村子的恶魔。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5047" />
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
			<![CDATA[与东临城外的#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城外的#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>