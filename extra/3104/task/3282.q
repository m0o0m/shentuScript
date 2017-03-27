<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3282" name="[主线]-提升到51级" type="1" suggest_level="1" visible="1" next_id="3283">
		<description>
			我已经对你说过,这一条极端危险的道路,而你的实力过于弱小 ,等你进一步提升之后再来找我吧!记住,当你提升到51时再来找我吧!
		</description>
		<dialogue>
			<brief>我已经对你说过,这一条极端危险的道路,而你的实力过于弱小 ,等你进一步提升之后再来找我吧!记住,当你提升到51时再来找我吧!</brief>
			<await>你还没有提升到51级呢,等你51级时再来找我吧!</await>
			<finish>很高兴你的实力又提升了!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3281" />
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
			<![CDATA[等级提升至51级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="51" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>