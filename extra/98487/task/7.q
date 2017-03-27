<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="7" name="每日任务-清理天藏岛2" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			来自遥远国度的具有神秘力量的人类，死后被黄泉教主召唤至苍月岛，由于生前的力量特别强大而成为恶灵僵尸的首领——恶灵尸王。
你的任务是：前往尸魔洞杀死50只恶灵尸王。  
任务奖励：经验：180000  绑定金币:80000    绑定元宝：50
		</description>
		<dialogue>
			<brief>来自遥远国度的具有神秘力量的人类，死后被黄泉教主召唤至苍月岛，由于生前的力量特别强大而成为恶灵僵尸的首领——恶灵尸王。
你的任务是：前往尸魔洞杀死50只恶灵尸王。  
任务奖励：经验：180000  绑定金币:80000    绑定元宝：50</brief>
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
恶灵尸王：#MONSTERGROUP0#
(组队打怪效率更快)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:找龙城任务使者交任务,NPCKEYNAME:任务使者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="恶灵尸王" />
					<group_hunting keyname="恶灵尸王0" />
					<group_hunting keyname="恶灵尸王1" />
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