<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5" name="每日任务-清理祖犸寺庙" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			在人类到来之前，祖犸族曾是这片大陆的主宰。在被人击溃之后，祖犸一族退守到了它们的圣地“
祖犸神庙”之中，而今坊间盛传祖犸教主集结大批势力，又要蠢蠢欲动了。
 你的任务是：杀死30只祖犸弓箭手，30只祖犸雕像和30只祖犸卫士。
 任务奖励：经验170000 绑定金币50000 绑定元宝50
		</description>
		<dialogue>
			<brief>在人类到来之前，祖犸族曾是这片大陆的主宰。在被人击溃之后，祖犸一族退守到了它们的圣地“
祖犸神庙”之中，而今坊间盛传祖犸教主集结大批势力，又要蠢蠢欲动了。
 你的任务是：杀死30只祖犸弓箭手，30只祖犸雕像和30只祖犸卫士。
 任务奖励：经验170000 绑定金币50000 绑定元宝50</brief>
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
			<![CDATA[#NPCLINK<STR:传送到祖犸寺庙,NPCKEYNAME:龙城老兵># 
祖犸弓箭手：#MONSTERGROUP0#
祖犸雕像：#MONSTERGROUP1#
祖犸卫士：#MONSTERGROUP2#
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
					<group_hunting keyname="祖玛弓箭手" />
					<group_hunting keyname="祖玛弓箭手0" />
					<group_hunting keyname="祖玛弓箭手1" />
					<group_hunting keyname="祖玛弓箭手3" />
				</group>
				<group n="30" >
					<group_hunting keyname="祖玛雕像" />
					<group_hunting keyname="祖玛雕像0" />
					<group_hunting keyname="祖玛雕像1" />
					<group_hunting keyname="祖玛雕像3" />
				</group>
				<group n="30" >
					<group_hunting keyname="祖玛卫士" />
					<group_hunting keyname="祖玛卫士0" />
					<group_hunting keyname="祖玛卫士1" />
					<group_hunting keyname="祖玛卫士3" />
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