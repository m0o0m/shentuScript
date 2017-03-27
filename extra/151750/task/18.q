<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="18" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#通知武尊" type="1" suggest_level="1" visible="1" next_id="19">
		<description>
			果然发生大事儿了啊，看来又有一场腥风血雨了，看来还得提早做准备。麻烦少侠还将此事告之武器尊者。
		</description>
		<dialogue>
			<brief>果然发生大事儿了啊，看来又有一场腥风血雨了，看来还得提早做准备。麻烦少侠还将此事告之武器尊者。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>礼节免了，拣要紧的说……（听完后）……此事牵连甚广，恐怕此事只是先兆，后面牵扯甚大啊！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="17" />
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
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:武器尊者,NPCKEYNAME:巫山城武器尊者,MOVE:1>#]]>
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