<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="6" name="每日任务-清理天藏岛1" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			越来越多的怪物在攻击天藏大陆，苍月岛骨魔洞的黄泉教主正带领他手下一步一步的向天藏大陆进攻，人类的勇士已经牺牲太多太多了，勇士，快去苍月岛骨魔洞支援人类的精英吧！
你的任务是：前往骨魔洞杀死10个骷髅长枪兵，10个骷髅弓箭手，10个骷髅锤兵，10个骷髅刀斧手。
任务奖励：经验：160000  绑定金币：80000    绑定元宝：50
		</description>
		<dialogue>
			<brief>越来越多的怪物在攻击天藏大陆，苍月岛骨魔洞的黄泉教主正带领他手下一步一步的向天藏大陆进攻，人类的勇士已经牺牲太多太多了，勇士，快去苍月岛骨魔洞支援人类的精英吧！
你的任务是：前往骨魔洞杀死10个骷髅长枪兵，10个骷髅弓箭手，10个骷髅锤兵，10个骷髅刀斧手。
任务奖励：经验：160000  绑定金币：80000    绑定元宝：50</brief>
			<await>完成任务</await>
			<finish>完成任务</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="100" max_num="200" />
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
骷髅长枪兵：#MONSTERGROUP0#
骷髅弓箭手：#MONSTERGROUP1#
骷髅锤兵：#MONSTERGROUP2#
骷髅刀斧手：#MONSTERGROUP3#
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
					<group_hunting keyname="骷髅长枪兵" />
					<group_hunting keyname="骷髅长枪兵0" />
					<group_hunting keyname="骷髅长枪兵1" />
				</group>
				<group n="10" >
					<group_hunting keyname="骷髅弓箭手" />
					<group_hunting keyname="骷髅弓箭手0" />
					<group_hunting keyname="骷髅弓箭手1" />
				</group>
				<group n="10" >
					<group_hunting keyname="骷髅锤兵" />
					<group_hunting keyname="骷髅锤兵0" />
					<group_hunting keyname="骷髅锤兵1" />
				</group>
				<group n="10" >
					<group_hunting keyname="骷髅刀斧手" />
					<group_hunting keyname="骷髅刀斧手0" />
					<group_hunting keyname="骷髅刀斧手1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="50" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>