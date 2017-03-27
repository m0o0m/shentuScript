<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="32" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#杀人之蜂" type="1" suggest_level="1" visible="1" next_id="33">
		<description>
			小家伙，前面可有一种凶残东西，多少人已经葬送在此。看你毫无惧色，也许你可以除之。不过切记万事小心为好。
		</description>
		<dialogue>
			<brief>小家伙，前面可有一种凶残东西，多少人已经葬送在此。看你毫无惧色，也许你可以除之。不过切记万事小心为好。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>来人了……来人了，太好了！有救了。英雄救我出去吧，我在这里被困了好几天了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="31" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞一层,POSX:30,POSY:87,STR:杀人蜂,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:渔夫,NPCKEYNAME:毒虫洞一层渔夫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="跳跳蜂" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>