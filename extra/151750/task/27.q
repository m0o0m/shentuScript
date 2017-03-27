<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="27" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#必经之路" type="1" suggest_level="1" visible="1" next_id="28">
		<script name="任务执行脚本" />
		<description>
			年轻人，去趟封魔使节那边吧，对你定有莫大好处。
		</description>
		<dialogue>
			<brief>年轻人，去趟封魔使节那边吧，对你定有莫大好处。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>来了？有些话，我必须告诉你。也是每个想要成为强者或者已经成为强者的必经之路。那就是不断的修炼自己，你会在这个过程之中不断成长。强者之路是孤独寂寞的，希望你可以承受的住。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="26" />
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
			<![CDATA[回复 #NPCLINK<STR:封魔使节,NPCKEYNAME:巫山城封魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:封魔使节,NPCKEYNAME:巫山城封魔使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>