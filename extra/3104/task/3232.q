<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3232" name="[主线]-可怕的谣言(2)" type="1" suggest_level="1" visible="1" next_id="3233">
		<description>
			道士的先祖天风，在神战后期开创了道士的职业，很多人认为道士是天藏大陆独有的职业。当天魔妖道出现时，人们开始怀疑道士。\n　　我们需要寻找到道士清白的证据，我记得在最初发现天魔石窟时，就是因为一个神秘老者的提醒，你不妨去找他，我想，他可能会更加了解天魔石窟内的一切。
		</description>
		<dialogue>
			<brief>道士的先祖天风，在神战后期开创了道士的职业，很多人认为道士是天藏大陆独有的职业。当天魔妖道出现时，人们开始怀疑道士。\n　　我们需要寻找到道士清白的证据，我记得在最初发现天魔石窟时，就是因为一个神秘老者的提醒，你不妨去找他，我想，他可能会更加了解天魔石窟内的一切。</brief>
			<await>去天魔石窟附近找神秘老者</await>
			<finish>道士勾结恶魔？无稽之谈！荒谬至极！那群胡说八道的蠢货……咳！咳！……</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3231" />
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
			<![CDATA[在天魔石窟附近找#NPCLINK<STR:神秘老者,NPCKEYNAME:神秘老者,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与天魔石窟附近的#NPCLINK<STR:神秘老者,NPCKEYNAME:神秘老者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>