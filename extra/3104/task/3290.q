<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3290" name="[主线]-水晶石的秘密(2)" type="1" suggest_level="1" visible="1" next_id="3291">
		<description>
			我可以感觉到这种晶体内蕴含着神秘的力量，它是如此新奇。\n　　或许，在敲碎它进行研究之前可以问问更多的人。那么，去找藏宝阁守护人询问吧。从以前的交往中，相信你已经认识到他是一位知识渊博的大师了吧。
		</description>
		<dialogue>
			<brief>我可以感觉到这种晶体内蕴含着神秘的力量，它是如此新奇。\n　　或许，在敲碎它进行研究之前可以问问更多的人。那么，去找藏宝阁守护人询问吧。从以前的交往中，相信你已经认识到他是一位知识渊博的大师了吧。</brief>
			<await>你可以去询问一下藏宝阁守护人。</await>
			<finish>很奇异的晶体呀！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3289" />
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
			<![CDATA[询问#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#关于蓝色宝石的事情]]>
			</progressing>
			<accomplishing>
			<![CDATA[询问#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#关于蓝色宝石的事情]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="205000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>