<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="800" name="#COLORCOLOR_YELLOW#[金币]  #COLORCOLOR_ORANGE#矿物的抢夺" type="2" suggest_level="1" visible="1" next_id="">
		<script name="挖矿任务" />
		<description>
			去矿洞里面帮我挖8个矿来，就给你三块金砖。怎么样？条件够诱人了吧？哈哈，有钱大家一起赚嘛。
		</description>
		<dialogue>
			<brief>去矿洞里面帮我挖8块矿来，就给你三块金砖。怎么样？条件够诱人了吧？哈哈，有钱大家一起赚嘛。</brief>
			<await>赶紧的，去矿洞挖8块矿来，过了这个村就没这个店了。</await>
			<finish>这么快就来了？不错不错，这是你的金砖，拿好咯。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[上缴 #NPCLINK<STR:8块任意矿石,NPCKEYNAME:巫山城矿主,MOVE:1># #ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:矿主,NPCKEYNAME:巫山城矿主,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="8" bind_require="2" >
					<group_item keyname="黑铁矿" />
					<group_item keyname="黄金矿" />
					<group_item keyname="白银矿" />
					<group_item keyname="青铜矿" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>