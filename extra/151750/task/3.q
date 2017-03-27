<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#至巅之战" type="1" suggest_level="1" visible="1" next_id="4">
		<script name="任务执行脚本" />
		<description>
			年轻人，想要成为强者是一条孤独且艰难的路，一定要有耐心，你去找饰品大师去聊聊吧，她可是当年亲眼目睹道尊夺取“天下第一”的。顺便去消灭3只白茅人试试新防具如何。
		</description>
		<dialogue>
			<brief>年轻人，想要成为强者是一条孤独且艰难的路，一定要有耐心，你去找饰品大师去聊聊吧，她可是当年亲眼目睹道尊夺取“天下第一”的。顺便去消灭3只白茅人试试新防具如何。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。</await>
			<finish>嘘！告诉你一个秘密。当年战神与法神为了“天下第一”的称号决战大陆之巅，本以为道尊不会介入，谁可曾想，道尊不但出现了，最后出乎所有人意料，道尊大胜，小道消息说道尊是靠的是‘复活神戒’ 的力量。年轻人听我说了那么久，耐性不错，这个当礼物送你了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="2" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:42,POSY:210,STR:白茅人># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:饰品大师,NPCKEYNAME:新手村饰品大师>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="稻草人" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="3000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>