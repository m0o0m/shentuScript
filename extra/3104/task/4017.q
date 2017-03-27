<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4017" name="[支线]-捕捉歌妖(3)" type="2" suggest_level="1" visible="1">
		<description>
			你拿到了笼子，很好。\n　　秘境歌妖并不好捉，你需要将她打倒在地之后才能捉住它，一切小心。\n
		</description>
		<dialogue>
			<brief>你拿到了笼子，很好。\n　　秘境歌妖并不好捉，你需要将她打倒在地之后才能捉住它，一切小心。\n</brief>
			<await>你只需要直接将她打倒在地就可以捉住它了，切记切记。\n</await>
			<finish>这些歌妖一定能卖出大价钱，实在是太感谢你了，我是不会亏待你的，这些报酬请你收下！\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="4016" />
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
			<![CDATA[前往#LINK<MAP:海底3,POSX:68,POSY:133,STR:秘境沉船三层,MOVE:1>#，捕捉10只#LINK<MAP:海底3,POSX:68,POSY:133,STR:秘境歌妖,MOVE:1>##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[你已经完成了任务，回东临城找#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#吧。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="10" bind_require="1" >
					<group_item keyname="笼子里的歌妖" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="随机传送(50次)"  n="1" bind_require="1" />
				<award keyname="定位石"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>