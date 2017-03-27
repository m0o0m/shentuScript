<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="23" name="新手任务-珍贵药材" type="1" suggest_level="1" visible="1" next_id="24">
		<description>
			竟然来了，就顺便帮我办点事吧。城外有种怪叫毒蜘蛛，蜘蛛牙齿是十分珍贵的药材，若是能在天藏
庆典上献给国王，那是在合适不过。可是我天生怕那个怪，你能帮我取一份来吗？
		</description>
		<dialogue>
			<brief>竟然来了，就顺便帮我办点事吧。城外有种怪叫毒蜘蛛，蜘蛛牙齿是十分珍贵的药材，若是能在天藏
庆典上献给国王，那是在合适不过。可是我天生怕那个怪，你能帮我取一份来吗？</brief>
			<await>竟然来了，就顺便帮我办点事吧。城外有种怪叫毒蜘蛛，蜘蛛牙齿是十分珍贵的药材，若是能在天藏
庆典上献给国王，那是在合适不过。可是我天生怕那个怪，你能帮我取一份来吗？</await>
			<finish>今年的庆典礼物有了这个药材我就放心了。我一定会记得在贡单上加你的名字！对了，就算不来买药也常回来看看。
</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="20" />
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
			<![CDATA[杀#LINK<MAP:龙城,POSX:240,POSY:398,STR:毒蜘蛛>##MONSTERGROUP0#
（点击可自动寻路）
（组队可增加效率）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:药店老板,NPCKEYNAME:龙城药店>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="毒蜘蛛" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>