<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3274" name="[主线]-藏宝阁守护人的笔记(1)" type="1" suggest_level="1" visible="1" next_id="3304">
		<script name="3274" />
		<description>
			我的笔记有着关于天藏大陆和神灵的秘史，如果你能帮我一个忙，我可以出借我的研究笔记。\n　　我的学生小诗月好像失踪了，我非常担心她可能进入了新发现的海角秘境。你愿意帮我这个忙吗？你不知道怎么去海角秘境？东临城的海角引路人可以带你，先去找她吧。
		</description>
		<dialogue>
			<brief>我的笔记有着关于天藏大陆和神灵的秘史，如果你能帮我一个忙，我可以出借我的研究笔记。\n　　我的学生小诗月好像失踪了，我非常担心她可能进入了新发现的海角秘境。你愿意帮我这个忙吗？你不知道怎么去海角秘境？东临城的海角引路人可以带你，先去找她吧。</brief>
			<await>还没有找到海角引路人吗？</await>
			<finish>我来到东临城不久，以前没见过吧？呵呵，以后我们会经常打交道哦！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3273" />
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
			<![CDATA[去东临城寻找#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#，通过他可以进入海角秘境。]]>
			</progressing>
			<accomplishing>
			<![CDATA[去东临城寻找#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#，通过他可以进入海角秘境。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>