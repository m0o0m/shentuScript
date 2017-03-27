<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3" name="每日任务-清理沃犸寺庙" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			三大古宗教之一的“沃犸教”早已被封印在沃犸寺庙之中，但是最近有人发现这些疯狂的沃犸教
众企图用1万信徒的生命去复活已死去的沃犸教主，我们需要有勇士去阻止它们的阴谋！
  你的任务是：前往沃犸寺庙杀死10只沃犸战将，10只火焰沃犸，10只暗黑战士和10只沃犸勇士。
 任务奖励：经验50000 绑定金币50000 绑定元宝50
		</description>
		<dialogue>
			<brief>三大古宗教之一的“沃犸教”早已被封印在沃犸寺庙之中，但是最近有人发现这些疯狂的沃犸教
众企图用1万信徒的生命去复活已死去的沃犸教主，我们需要有勇士去阻止它们的阴谋！
  你的任务是：前往沃犸寺庙杀死10只沃犸战将，10只火焰沃犸，10只暗黑战士和10只沃犸勇士。
 任务奖励：经验50000 绑定金币50000  绑定元宝50</brief>
			<await>完成任务</await>
			<finish>完成任务</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="25" max_num="44" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:传送到沃犸寺庙,NPCKEYNAME:龙城老兵># 
沃犸战将：#MONSTERGROUP0#
火焰沃犸：#MONSTERGROUP1#
暗黑战士：#MONSTERGROUP2#
沃犸勇士：#MONSTERGROUP3#
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
					<group_hunting keyname="沃玛战将" />
					<group_hunting keyname="沃玛战将0" />
					<group_hunting keyname="沃玛战将1" />
				</group>
				<group n="10" >
					<group_hunting keyname="火焰沃玛" />
					<group_hunting keyname="火焰沃玛0" />
					<group_hunting keyname="火焰沃玛1" />
				</group>
				<group n="10" >
					<group_hunting keyname="暗黑战士" />
					<group_hunting keyname="暗黑战士0" />
					<group_hunting keyname="暗黑战士1" />
				</group>
				<group n="10" >
					<group_hunting keyname="沃玛勇士" />
					<group_hunting keyname="沃玛勇士0" />
					<group_hunting keyname="沃玛勇士1" />
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