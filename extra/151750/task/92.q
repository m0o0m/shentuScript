<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="92" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#探秘锁魔宫" type="1" suggest_level="1" visible="1" next_id="93">
		<script name="任务执行脚本" />
		<description>
			锁魔宫是新手圣地，里面十个BOSS，难度低，装备掉落搞，不要错过。
		</description>
		<dialogue>
			<brief>锁魔宫是新手圣地，里面十个BOSS，难度低，装备掉落搞，不要错过。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>怎么样，里面的BOSS掉落还不错吧，看来你收获了很多好东西哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="91" />
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
			<![CDATA[击杀 #NPCLINK<STR:锁魔宫的任何BOSS,NPCKEYNAME:巫山城暗殿引路人># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="毁灭战神" />
					<group_hunting keyname="暗之祖玛教主" />
					<group_hunting keyname="暗之白蛇妖" />
					<group_hunting keyname="暗之沃玛教主" />
					<group_hunting keyname="暗之牛魔王" />
					<group_hunting keyname="暗之骷髅精灵" />
					<group_hunting keyname="暗之黄泉教主" />
					<group_hunting keyname="暗之双头金刚" />
					<group_hunting keyname="暗之虹魔教主" />
					<group_hunting keyname="暗之尸霸" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>