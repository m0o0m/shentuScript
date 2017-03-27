<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="9" name="每日任务-清理丛林迷宫" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			由于当年圣战，法神和天尊联手将赤月恶魔封印在龙城地底下，让其占时不在威胁龙城的安宁，而我们的勇士圣战，法神也因那场浩战死在了赤月魔穴。只有浑身带伤的天尊回到了龙城。现在又出现了当年的情景了，龙城周围出现了很多变异的蜘蛛，赤月恶魔又将苏醒了！
你的任务是：前往赤月杀死10只暴牙蜘蛛，10只钢牙蜘蛛，10只天狼蜘蛛 ，10只月魔蜘蛛和10只花吻蜘蛛。
 任务奖励：经验：220000  绑定金币:80000    绑定元宝：100
		</description>
		<dialogue>
			<brief>由于当年圣战，法神和天尊联手将赤月恶魔封印在龙城地底下，让其占时不在威胁龙城的安宁，而我们的勇士圣战，法神也因那场浩战死在了赤月魔穴。只有浑身带伤的天尊回到了龙城。现在又出现了当年的情景了，龙城周围出现了很多变异的蜘蛛，赤月恶魔又将苏醒了！
你的任务是：前往赤月杀死10只暴牙蜘蛛，10只钢牙蜘蛛，10只天狼蜘蛛 ，10只月魔蜘蛛和10只花吻蜘蛛。
 任务奖励：经验：220000  绑定金币:80000    绑定元宝：100</brief>
			<await>完成任务</await>
			<finish>完成任务</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="45" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:传送到丛林迷宫,NPCKEYNAME:龙城老兵># 
暴牙蜘蛛：#MONSTERGROUP0#
钢牙蜘蛛：#MONSTERGROUP1#
天狼蜘蛛：#MONSTERGROUP2#
月魔蜘蛛：#MONSTERGROUP3#
花吻蜘蛛：#MONSTERGROUP4#
(组队打怪效率更快)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:找龙城任务使者交任务,NPCKEYNAME:任务使者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="暴牙蜘蛛" />
					<group_hunting keyname="暴牙蜘蛛0" />
				</group>
				<group n="10" >
					<group_hunting keyname="钢牙蜘蛛" />
					<group_hunting keyname="钢牙蜘蛛0" />
				</group>
				<group n="10" >
					<group_hunting keyname="天狼蜘蛛" />
					<group_hunting keyname="天狼蜘蛛0" />
				</group>
				<group n="10" >
					<group_hunting keyname="月魔蜘蛛" />
					<group_hunting keyname="月魔蜘蛛0" />
				</group>
				<group n="10" >
					<group_hunting keyname="花吻蜘蛛" />
					<group_hunting keyname="花吻蜘蛛0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="100" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>