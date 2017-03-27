<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="97" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#立足之本" type="1" suggest_level="1" visible="1" next_id="98">
		<script name="任务执行脚本" />
		<description>
			是时候加入或自己培养一个势力了，要在江湖上立足，这是基本的要求。如果你的实力够强，可以自己建立一个公会，若你的实力还不够强，那就去加入强者的公会，对你以后的发展很有好处。
		</description>
		<dialogue>
			<brief>是时候加入或自己培养一个势力了，要在江湖上立足，这是基本的要求。如果你的实力够强，可以自己建立一个公会，若你的实力还不够强，那就去加入强者的公会，对你以后的发展很有好处。</brief>
			<await>不要纠结，公会是可以更换的，先加入一个公会去吧。</await>
			<finish>恭喜你！这是一个开始，也算是你的一个立足点。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="96" />
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
			<![CDATA[加入一个行会或创建一个行会 #MONSTERGROUP0#
#COLORCOLOR_GOLD#快速查看：#COLOREND# #UILINK<STR:行会列表,WND:执行脚本,PARAM:CLOnFamilyWindow()>#
任务奖励：#COLORCOLOR_MAGENTA#400万经验#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:屠夫,NPCKEYNAME:巫山城屠夫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>