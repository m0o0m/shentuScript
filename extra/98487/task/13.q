<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="13" name="新手任务-恶作剧的稻草人" type="1" suggest_level="1" visible="1" next_id="14">
		<description>
			其实凤钗我早就做好了，只是……我把它弄丢了!拜托请你先帮我杀死一只稻草人吧,看能不能找到一点线索?如果你觉得自己杀怪很辛苦.可以找几个伙伴组队!对话框上面第四个按钮为组队按钮,可以打开组队框,开启组队后就可以加入组队了,你也可以自己组建队伍并添加为好友.
		</description>
		<dialogue>
			<brief>其实凤钗我早就做好了，只是……我把它弄丢了!拜托请你先帮我杀死一只稻草人吧,看能不能找到一点线索?如果你觉得自己杀怪很辛苦.可以找几个伙伴组队!对话框上面第四个按钮为组队按钮,可以打开组队框,开启组队后就可以加入组队了,你也可以自己组建队伍并添加为好友.</brief>
			<await>其实凤钗我早就做好了，只是……我把它弄丢了!拜托请你先帮我杀死一只稻草人吧,看能不能找到一点线索?如果你觉得自己杀怪很辛苦.可以找几个伙伴组队!对话框上面第四个按钮为组队按钮,可以打开组队框,开启组队后就可以加入组队了,你也可以自己组建队伍并添加为好友.</await>
			<finish>其实凤钗我早就做好了，只是……我把它弄丢了!拜托请你先帮我杀死一只稻草人吧,看能不能找到一点线索?如果你觉得自己杀怪很辛苦.可以找几个伙伴组队!对话框上面第四个按钮为组队按钮,可以打开组队框,开启组队后就可以加入组队了,你也可以自己组建队伍并添加为好友.</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="12" />
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
			<![CDATA[杀#LINK<MAP:龙城,POSX:399,POSY:300,STR:稻草人>##MONSTERGROUP0#
（点击可自动寻路）
（组队可增加效率）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:项链店老板,NPCKEYNAME:龙城项链店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#
]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="稻草人" />
				</group>
			</group_huntings>
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