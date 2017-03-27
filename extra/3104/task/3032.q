<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3032" name="[主线]-债务纠纷(1)" type="1" suggest_level="1" visible="1" next_id="3033">
		<description>
			我的钱都被寄售商人那奸商借去了，唉，我总是心太软，怎么就轻易地答应了借钱呢？要不你帮我去催催？
		</description>
		<dialogue>
			<brief>我的钱都被寄售商人那奸商借去了，唉，我总是心太软，怎么就轻易地答应了借钱呢？要不你帮我去催催？</brief>
			<await>去找寄售商人对话</await>
			<finish>还钱？你说什么，没听到……。哎呀，我说怎么今天喜鹊叫，原来是有贵宾临门，您请坐！我去端茶！\n　　啊，怎么可以不要茶？要的，要的，怎么可以没有茶！哎呀，小祖宗，别砸！别砸东西呀！不就是还钱嘛，这个……是完全不可能的。……我真是没钱啊，你把小店砸光了也没钱！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3031" />
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
			<![CDATA[与#NPCLINK<STR:寄售商人,NPCKEYNAME:寄售商人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:寄售商人,NPCKEYNAME:寄售商人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="27000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>