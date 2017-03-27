<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1" name="每日任务-清理废弃矿洞" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			最近矿洞里僵尸横行，已经严重影响了人类矿区的日常工作了。
你的任务是：前往废矿入口杀死100只僵尸。
任务奖励：经验60000 绑定金币50000 绑定元宝50
		</description>
		<dialogue>
			<brief>最近矿洞里僵尸横行，已经严重影响了人类矿区的日常工作了。
你的任务是：前往废矿入口杀死100只僵尸。
任务奖励：经验60000 绑定金币50000 绑定元宝50</brief>
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
			<![CDATA[#NPCLINK<STR:传送到废弃矿洞,NPCKEYNAME:龙城老兵># 
活死人：#MONSTERGROUP0#
(组队打怪效率更快)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:找龙城任务使者交任务,NPCKEYNAME:任务使者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="僵尸1" />
					<group_hunting keyname="僵尸10" />
					<group_hunting keyname="僵尸2" />
					<group_hunting keyname="僵尸20" />
					<group_hunting keyname="僵尸3" />
					<group_hunting keyname="僵尸30" />
					<group_hunting keyname="僵尸4" />
					<group_hunting keyname="僵尸40" />
					<group_hunting keyname="僵尸5" />
					<group_hunting keyname="僵尸50" />
					<group_hunting keyname="僵1" />
					<group_hunting keyname="僵2" />
					<group_hunting keyname="僵3" />
					<group_hunting keyname="僵4" />
					<group_hunting keyname="僵5" />
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