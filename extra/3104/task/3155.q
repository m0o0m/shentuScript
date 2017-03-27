<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3155" name="[主线]-藏宝阁之木人巷" type="1" suggest_level="1" visible="1" next_id="3104">
		<description>
			藏宝阁有着调整的提升速度和稀世的宝物，诸如终极技能、稀有坐骑、灵元珠等等，都是有钱都买不到宝物！当然，既然你是为提升实力而来，那么，你可以先在这木人巷内修炼，因为在里面的战斗，将可以获得远超外面的经验哦！\n　　等我说完呀，如果你能证明你有实力挑战20名木人巷守卫的话，我有好处给你哦！
		</description>
		<dialogue>
			<brief>藏宝阁有着调整的提升速度和稀世的宝物，诸如终极技能、稀有坐骑、灵元珠等等，都是有钱都买不到宝物！当然，既然你是为提升实力而来，那么，你可以先在这木人巷内修炼，因为在里面的战斗，将可以获得远超外面的经验哦！\n　　等我说完呀，如果你能证明你有实力挑战20名木人巷守卫的话，我有好处给你哦！</brief>
			<await>进去吧，别等了，时间很宝贵！</await>
			<finish>小伙子实力很强呀，相信你肯定收获不错！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3154" />
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
			<![CDATA[击杀20名#LINK<MAP:木人巷,POSX:41,POSY:85,STR:木人巷守卫>##MONSTERGROUP0#。#COLORCOLOR_GOLD#提示：使用多倍经验卷轴在木人巷练级将享受经验飞涨的快感！#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="木人巷守卫1" />
					<group_hunting keyname="木人巷守卫2" />
					<group_hunting keyname="木人巷守卫3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="125000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>