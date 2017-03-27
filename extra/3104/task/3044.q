<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3044" name="[主线]-骷髅暴动(4)" type="1" suggest_level="1" visible="1" next_id="3046">
		<description>
			让我们先解决将军冢的危机吧，凡是沾染上恶魔之血的骷髅，我们就全部清理掉！\n　　每人杀掉20只，便可以完全镇压骷髅的暴动了！
		</description>
		<dialogue>
			<brief>让我们先解决将军冢的危机吧，凡是沾染上恶魔之血的骷髅，我们就全部清理掉！\n　　每人杀掉20只，便可以完全镇压骷髅的暴动了！</brief>
			<await>杀掉20只骷髅了吗？</await>
			<finish>呼，终于把将军冢清理干净了！你的付出真是太重要了！这点奖励请一定不要推辞！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="99" max_num="100" />
			<prologues>
				<group>
					<prologue id="3043" />
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
			<![CDATA[去将军冢一层击杀任意#LINK<MAP:将军冢1,POSX:88,POSY:87,STR:骷髅,MOVE:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="飞刀骷髅1" />
					<group_hunting keyname="单刀骷髅1" />
					<group_hunting keyname="骷髅战士1" />
					<group_hunting keyname="大斧骷髅1" />
					<group_hunting keyname="超级飞刀骷髅1" />
					<group_hunting keyname="超级单刀骷髅1" />
					<group_hunting keyname="超级骷髅战士1" />
					<group_hunting keyname="超级大斧骷髅1" />
					<group_hunting keyname="挖肉飞刀骷髅1" />
					<group_hunting keyname="挖肉单刀骷髅1" />
					<group_hunting keyname="挖肉骷髅战士1" />
					<group_hunting keyname="挖肉大斧骷髅1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="79300" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>