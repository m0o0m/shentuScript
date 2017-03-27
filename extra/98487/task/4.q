<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4" name="每日任务-清理石窟猪洞" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			生性贪婪的“野猪族”常常会攻击去石墓探险的人类学者，是时候给它们一些教训了！
你的任务是：前往石墓杀死30只红野猪、30只黑野猪、30只黑色恶蛆
 任务奖励：经验120000 绑定金币50000 绑定元宝50
		</description>
		<dialogue>
			<brief>生性贪婪的“野猪族”常常会攻击去石墓探险的人类学者，是时候给它们一些教训了！
你的任务是：前往石墓杀死30只红野猪、30只黑野猪、30只黑色恶蛆
 任务奖励：经验120000 绑定金币50000 绑定元宝50</brief>
			<await>完成任务</await>
			<finish>完成任务</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="25" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:传送到石墓猪洞,NPCKEYNAME:龙城老兵># 
红野猪：#MONSTERGROUP0#
黑野猪：#MONSTERGROUP1#
黑色恶蛆：#MONSTERGROUP2#
(组队打怪效率更快)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:找龙城任务使者交任务,NPCKEYNAME:任务使者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="红野猪" />
					<group_hunting keyname="红野猪0" />
					<group_hunting keyname="红野猪1" />
				</group>
				<group n="30" >
					<group_hunting keyname="黑野猪" />
					<group_hunting keyname="黑野猪0" />
					<group_hunting keyname="黑野猪1" />
				</group>
				<group n="30" >
					<group_hunting keyname="黑色恶蛆" />
					<group_hunting keyname="黑色恶蛆0" />
					<group_hunting keyname="黑色恶蛆1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="50" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>