<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10" name="新手任务-屠夫的邀请" type="1" suggest_level="1" visible="1" next_id="11">
		<description>
			说起来昨天屠夫给我送了张喜贴，说是儿子要娶媳妇了，虽然世道不太平，可喜
事还是喜事，你帮我去屠夫家一趟，给他道个喜，说我一定去，我们哥俩好久
没喝上一盅了。
		</description>
		<dialogue>
			<brief>说起来昨天屠夫给我送了张喜贴，说是儿子要娶媳妇了，虽然世道不太平，可喜事还是喜事，你帮我去屠夫家一趟，给他道个喜，说我一定去，我们哥俩好久没喝上一盅了。</brief>
			<await>说起来昨天屠夫给我送了张喜贴，说是儿子要娶媳妇了，虽然世道不太平，可喜事还是喜事，你帮我去屠夫家一趟，给他道个喜，说我一定去，我们哥俩好久没喝上一盅了。</await>
			<finish>哈哈。新手指导员还特地叫你跑一趟，其实不用说，我就知道他一定会来，我和他当年在战场上拜过把子的，过命的交情！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="22" />
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
			<![CDATA[  前往-#NPCLINK<STR:屠夫,NPCKEYNAME:龙城屠夫>#
（点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[  前往-#NPCLINK<STR:屠夫,NPCKEYNAME:龙城屠夫>#
（点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>