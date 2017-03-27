<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3119" name="[主线]-拯救被囚禁的灵魂" type="1" suggest_level="1" visible="1" next_id="3120">
		<script name="3118" />
		<description>
			我现在已经获得了神圣的祝福力量，我要赶在这力量消失之前，破坏尸奴的尸身，解除他们被囚禁的灵魂！
		</description>
		<dialogue>
			<brief>仔细感受，你现在已经获得了神圣的祝福力量，只要你在这力量消失之前，破坏尸奴的尸身，就可以解除千年树魔施加在他们身上的灵魂囚禁法术，释放他们的灵魂了！</brief>
			<await>太好了，快去拯救我们祖辈的灵魂吧</await>
			<finish>谢谢，我已经感觉到，父亲的灵魂，脱离了被奴役的命运！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3118" />
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
			<![CDATA[你已获得了神圣的力量，快去妖山暗穴破坏20只任意#LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:尸奴,MOVE:1>##MONSTERGROUP0#的尸身释放它们的灵魂]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去将拯救完成的消息告诉龙城的#NPCLINK<STR:悲伤的老人,NPCKEYNAME:悲伤的老人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="尸奴1" />
					<group_hunting keyname="尸奴2" />
					<group_hunting keyname="尸奴3" />
					<group_hunting keyname="超级尸奴1" />
					<group_hunting keyname="挖肉尸奴1" />
					<group_hunting keyname="挖肉尸奴2" />
					<group_hunting keyname="挖肉尸奴3" />
					<group_hunting keyname="精英尸奴1" />
					<group_hunting keyname="掘铲尸奴1" />
					<group_hunting keyname="掘铲尸奴2" />
					<group_hunting keyname="掘铲尸奴3" />
					<group_hunting keyname="超级掘铲尸奴1" />
					<group_hunting keyname="挖肉掘铲尸奴1" />
					<group_hunting keyname="挖肉掘铲尸奴2" />
					<group_hunting keyname="挖肉掘铲尸奴3" />
					<group_hunting keyname="精英掘铲尸奴1" />
					<group_hunting keyname="铁镐尸奴1" />
					<group_hunting keyname="铁镐尸奴2" />
					<group_hunting keyname="铁镐尸奴3" />
					<group_hunting keyname="铁镐尸奴4" />
					<group_hunting keyname="超级铁镐尸奴1" />
					<group_hunting keyname="挖肉铁镐尸奴1" />
					<group_hunting keyname="挖肉铁镐尸奴2" />
					<group_hunting keyname="挖肉铁镐尸奴3" />
					<group_hunting keyname="挖肉铁镐尸奴4" />
					<group_hunting keyname="精英铁镐尸奴1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>