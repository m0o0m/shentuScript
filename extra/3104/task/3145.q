<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3145" name="[主线]-深入调查" type="1" suggest_level="1" visible="1" next_id="3146">
		<description>
			让我们进一步探察邪庙的实力吧。继续深入邪庙，击杀30只邪庙僧侣，并查探好行进路线。那些僧侣是梵天僧最忠实的追随者，他们虽然都剃光了头，一副人畜无害的样子，但是内心却是极其邪恶的。
		</description>
		<dialogue>
			<brief>让我们进一步探察邪庙的实力吧。你继续深入邪庙，击杀30只邪庙僧侣，并查探好行进路线。</brief>
			<await>路线探察的怎么样了？</await>
			<finish>很好，这样一来邪庙的地形都清楚了，辛苦你了，你休息一下，等一下我会将一个非常重要的任务交给你。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3144" />
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
			<![CDATA[去#LINK<MAP:邪庙1,POSX:86,POSY:196,STR:天荒邪庙,MOVE:1>#消灭30只任意#COLORCOLOR_YELLOW#夜行僧、妖僧、鬼面武者...#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去告诉#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#路线已经探测清楚]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="夜行僧1" />
					<group_hunting keyname="超级夜行僧1" />
					<group_hunting keyname="挖肉夜行僧1" />
					<group_hunting keyname="精英夜行僧1" />
					<group_hunting keyname="妖僧1" />
					<group_hunting keyname="挖肉妖僧1" />
					<group_hunting keyname="超级妖僧1" />
					<group_hunting keyname="精英妖僧1" />
					<group_hunting keyname="鬼面武者1" />
					<group_hunting keyname="超级鬼面武者1" />
					<group_hunting keyname="挖肉鬼面武者1" />
					<group_hunting keyname="精英鬼面武者1" />
					<group_hunting keyname="影刺1" />
					<group_hunting keyname="影刺2" />
					<group_hunting keyname="超级影刺1" />
					<group_hunting keyname="挖肉影刺1" />
					<group_hunting keyname="挖肉影刺2" />
					<group_hunting keyname="精英影刺1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>