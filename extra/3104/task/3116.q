<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3116" name="[主线]-妖山暗穴的秘密（三）" type="1" suggest_level="1" visible="1" next_id="3117">
		<script name="3116" />
		<description>
			再次进入妖山暗穴，击杀20只鬼面监工和20只妖面监工，控制妖山暗穴提炼山石精气的有生力量，从而变相的阻止千年树魔变强。
		</description>
		<dialogue>
			<brief>请再次进入妖山暗穴，击杀20只监工，控制它们的有生力量，从而变相的阻止千年树魔变强。</brief>
			<await>\n　　你杀完妖面监工和鬼面监工了吗</await>
			<finish>辛苦你了！相信，妖面监工和鬼面监工的灭亡，会大大地破坏千年树魔吸取山石精气的速度！
　　但只有击杀千年树魔，才能真正地破除此次危机。年青的勇士，你一定要快点强大起来，我期待着你击杀千年树魔的一天！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3115" />
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
			<![CDATA[去妖山暗穴杀死20只#LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:妖面监工,MOVE:1>##MONSTERGROUP0#和20只#LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:鬼面监工,MOVE:1>##MONSTERGROUP1#，以此来控制千年树魔获取山石精气的速度]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="妖面监工1" />
					<group_hunting keyname="妖面监工2" />
					<group_hunting keyname="妖面监工3" />
					<group_hunting keyname="超级妖面监工1" />
					<group_hunting keyname="挖肉妖面监工1" />
					<group_hunting keyname="挖肉妖面监工2" />
					<group_hunting keyname="挖肉妖面监工3" />
					<group_hunting keyname="精英妖面监工1" />
				</group>
				<group n="20" >
					<group_hunting keyname="鬼面监工1" />
					<group_hunting keyname="鬼面监工2" />
					<group_hunting keyname="鬼面监工3" />
					<group_hunting keyname="超级鬼面监工1" />
					<group_hunting keyname="挖肉鬼面监工1" />
					<group_hunting keyname="挖肉鬼面监工2" />
					<group_hunting keyname="挖肉鬼面监工3" />
					<group_hunting keyname="精英鬼面监工1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>