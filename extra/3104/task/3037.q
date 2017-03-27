<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3037" name="[主线]-开荒沃土" type="1" suggest_level="1" visible="1" next_id="3038">
		<script name="3037" />
		<description>
			绝路岭有着大片肥沃的土地，我们准备抽出部分人手，开发绝路岭种植粮食。但是，绝路岭有着无数因邪气侵蚀而陷入狂暴的猿猴，必须首先派出勇士去清除。\n　　你愿意前往绝路岭，消灭任意8只猿猴吗？
		</description>
		<dialogue>
			<brief>绝路岭有着大片肥沃的土地，我们准备抽出部分人手，开发绝路岭种植粮食。但是，绝路岭有着无数因邪气侵蚀而陷入狂暴的猿猴，必须首先派出勇士去清除。\n　　你愿意前往绝路岭，消灭任意8只猿猴吗？</brief>
			<await>前往绝路岭消灭8只猿类</await>
			<finish>虽然不能彻底解决绝路岭那些猴猿，但这一次清理会让绝路岭安全很多，接下来的危险我们的农户已经可以自己应付了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3036" />
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
			<![CDATA[去绝路岭击败#LINK<MAP:绝路岭,POSX:121,POSY:215,STR:猿猴,MOVE:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="猿猴" />
					<group_hunting keyname="凶暴猿猴" />
					<group_hunting keyname="赤面猴" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="56000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>