<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5003" name="[剧情]-雪域天狼的传说（3）" type="2" suggest_level="1" visible="1" next_id="5004">
		<description>
			人类，你好！这森林很大，可是很少看见人类，你们人类长得可真奇怪！\n　　啊，你在找我吗？难道我已经出名了吗？唉！受伤真难受！先别聊了，你没看到包围我的大苍狼吗？帮我击退它们吧！
		</description>
		<dialogue>
			<brief>人类，你好！这森林很大，可是很少看见人类，你们人类长得可真奇怪！\n　　啊，你在找我吗？难道我已经出名了吗？唉！受伤真难受！先别聊了，你没看到包围我的大苍狼吗？帮我击退它们吧！</brief>
			<await>击杀3只大苍狼，解救被围困的小白狼。</await>
			<finish>真是太让人伤心了，白狼是狼，苍狼也是狼，本是同根生，相煎可太急啊！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5002" />
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
			<![CDATA[为解小白狼之困，需击杀3只#LINK<MAP:龙城,POSX:419,POSY:349,STR:大苍狼,MOVE:1>##MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="大苍狼" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>