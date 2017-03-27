<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4030" name="[支线]-藏宝阁之珍宝洞（危险！）" type="2" suggest_level="1" visible="1">
		<description>
			想了解珍宝洞的秘密？你可真没有选错，因为在里面可以得到各种精炼装备的宝物，比如灵元珠、护炼符之类！怎么样？是不是觉得有点迫不及待？呵呵，别急呀，如果你能证明你有实力挑战珍宝洞守卫的话，我有好处给你哦！
		</description>
		<dialogue>
			<brief>想了解珍宝洞的秘密？你可真没有选错，因为在里面可以得到各种精炼装备的宝物，比如灵元珠、护炼符之类！怎么样？是不是觉得有点迫不及待？呵呵，别急呀，如果你能证明你有实力挑战珍宝洞守卫的话，我有好处给你哦！</brief>
			<await>进去吧，别等了，时间很宝贵！</await>
			<finish>小伙子实力很强呀，相信你肯定收获不错！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="30" max_num="200" />
			<prologues>
				<group>
					<prologue id="3155" />
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
			<![CDATA[进入珍宝洞，击杀1名#LINK<MAP:珍宝洞,POSX:41,POSY:85,STR:珍宝洞守卫>##MONSTERGROUP0#。注意：任务危险，建议组队；并请多多利用技能#COLORCOLOR_GOLD#风刺剑法（战）#COLOREND#、#COLORCOLOR_GOLD#雷霆极光（法）#COLOREND#、#COLORCOLOR_GOLD#蛊毒咒（道）#COLOREND#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到木人巷，与#NPCLINK<STR:木人巷传送人,NPCKEYNAME:木人巷传送人,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="珍宝洞守卫1" />
					<group_hunting keyname="珍宝洞守卫2" />
					<group_hunting keyname="珍宝洞守卫3" />
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