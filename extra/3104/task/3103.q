<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3103" name="[主线]-提升实力" type="1" suggest_level="1" visible="1" next_id="3151">
		<script name="3103" />
		<description>
			哦，你在找寻提升实力的方法？嗯，看起来勉勉强强有点实力的样子，你可敢进入试炼场内，消灭点里面的试炼兽，证明你的实力？
		</description>
		<dialogue>
			<brief>哦，你在找寻提升实力的方法？嗯，看起来勉勉强强有点实力的样子，你可敢进入试炼场内，消灭点里面的试炼兽，证明你的实力？</brief>
			<await>你实力不行啊，试炼兽都还没消灭完！</await>
			<finish>瞧你细皮嫩肉的模样，居然可以在试炼场与试炼兽缠斗至今。嗯，你过关了，以后每天都欢迎你过来进行试炼。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3102" />
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
			<![CDATA[通过龙城广场的#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#进入#COLORCOLOR_YELLOW#试炼场#COLOREND#击杀20只#COLORCOLOR_YELLOW#试炼兽#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城的广场找#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="初级试炼兽" />
					<group_hunting keyname="中级试炼兽" />
					<group_hunting keyname="高级试炼兽" />
					<group_hunting keyname="超级试炼兽" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
			<awards>
				<award keyname="试炼凭证"  n="100" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>