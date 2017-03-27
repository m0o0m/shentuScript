<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="8" name="每日任务-清理天藏岛3" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			魔界魔头牛魔王，法力无边，号称“大力牛魔王”。和孙悟空曾经结拜兄弟，牛魔王为兄，孙悟空为弟，因不满人类的贪婪性格，带领大批牛子牛孙占据牛魔寺庙欺压人类！
你的任务是：前往牛魔寺庙杀死10只牛魔战士，10只牛头魔，10只牛魔侍卫，10只牛魔斗士和10只牛魔法师。
任务奖励：经验：200000  绑定金币:80000    绑定元宝：100
		</description>
		<dialogue>
			<brief>魔界魔头牛魔王，法力无边，号称“大力牛魔王”。和孙悟空曾经结拜兄弟，牛魔王为兄，孙悟空为弟，因不满人类的贪婪性格，带领大批牛子牛孙占据牛魔寺庙欺压人类！
你的任务是：前往牛魔寺庙杀死10只牛魔战士，10只牛头魔，10只牛魔侍卫，10只牛魔斗士和10只牛魔法师。
任务奖励：经验：200000  绑定金币:80000    绑定元宝：100</brief>
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
			<![CDATA[#NPCLINK<STR:传送到天藏岛,NPCKEYNAME:龙城老兵># 
牛魔战士：#MONSTERGROUP0#
牛头魔：#MONSTERGROUP1#
牛魔侍卫：#MONSTERGROUP2#
牛魔斗士：#MONSTERGROUP3#
牛魔法师：#MONSTERGROUP4#
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
					<group_hunting keyname="牛魔战士" />
					<group_hunting keyname="牛魔战士0" />
				</group>
				<group n="10" >
					<group_hunting keyname="牛头魔" />
					<group_hunting keyname="牛头魔0" />
				</group>
				<group n="10" >
					<group_hunting keyname="牛魔侍卫" />
					<group_hunting keyname="牛魔侍卫0" />
				</group>
				<group n="10" >
					<group_hunting keyname="牛魔斗士" />
					<group_hunting keyname="牛魔斗士0" />
				</group>
				<group n="10" >
					<group_hunting keyname="牛魔法师" />
					<group_hunting keyname="牛魔法师0" />
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