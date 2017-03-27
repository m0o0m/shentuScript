<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="21" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#告知锻造大师" type="1" suggest_level="1" visible="1" next_id="22">
		<script name="任务执行脚本" />
		<description>
			此事应聚众人之力，方有胜算把握，锻造必不可少，还请前去通知锻造大师。
		</description>
		<dialogue>
			<brief>此事应聚众人之力，方有胜算把握，锻造必不可少，还请前去通知锻造大师。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>快讲快讲，我还有很多事情呢！……（听完后）……哈哈哈哈！正好正好，我刚锻过的几把东西，正愁不知道效果如何呢。偷偷告诉你，我现在正在锻一把绝世神兵，好了，该干活了！听到这个消息，我又充满了干劲。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="20" />
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
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>