<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5023" name="[剧情]-堕落者血手（3）" type="2" suggest_level="1" visible="1" next_id="5022">
		<description>
			我似乎看到了游荡者蟑螂在龙城出现过……蟑螂是一个人的外号，没有知道他的真名，因为他像蟑螂一样出现在所有角落，并且命也足够大……他知道很多消息，你可以去找他，我记得他离开时出了西边的城门。
		</description>
		<dialogue>
			<brief>我似乎看到了游荡者蟑螂在龙城出现过……蟑螂是一个人的外号，没有知道他的真名，因为他像蟑螂一样出现在所有角落，并且命也足够大……他知道很多消息，你可以去找他，我记得他离开时出了西边的城门。</brief>
			<await>出龙城西门，寻找一个外号蟑螂的游荡者。</await>
			<finish>年经的勇士，我可不认识你，也不打算认识你！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5022" />
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
			<![CDATA[出龙城西门，寻找一个外号叫#NPCLINK<STR:蟑螂,NPCKEYNAME:游荡者蟑螂,MOVE:1>#的游荡者。]]>
			</progressing>
			<accomplishing>
			<![CDATA[出龙城西门，寻找一个外号叫#NPCLINK<STR:蟑螂,NPCKEYNAME:游荡者蟑螂,MOVE:1>#的游荡者。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>