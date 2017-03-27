<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="22" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#告知斗技尊者" type="2" suggest_level="1" visible="1" next_id="23">
		<script name="22q" />
		<description>
			对了，拖你一件事。把这个事告诉斗技尊者，真想看看他会是什么表情。啊哈哈哈！
		</description>
		<dialogue>
			<brief>对了，托你一件事。把这个事告诉斗技尊者，真想看看他会是什么表情。啊哈哈哈！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>嗯……我曾在一本古籍之中窥见过有此预言，不知是否巧合，倘若真灵验……</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="110110" />
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
			<![CDATA[回复 #NPCLINK<STR:斗技尊者,NPCKEYNAME:巫山城斗技尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:斗技尊者,NPCKEYNAME:巫山城斗技尊者,MOVE:1>#]]>
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