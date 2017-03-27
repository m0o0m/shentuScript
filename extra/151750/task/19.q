<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="19" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#告知药尊者" type="1" suggest_level="1" visible="1" next_id="20">
		<script name="任务执行脚本" />
		<description>
			要辛苦少侠再跑一趟了，此事我已知晓，单凭一己之力恐无法将此事平息，还请少侠前去告之药品尊者。也好尽早做些准备。
		</description>
		<dialogue>
			<brief>要辛苦少侠再跑一趟了，此事我已知晓，单凭一己之力恐无法将此事平息，还请少侠前去告之药品尊者。也好尽早做些准备。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>哦？终于要来了吗？天下之事静而复动，反复变转。此事老夫知道了。谢谢你了，小娃娃。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="18" />
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
			<![CDATA[回复 #NPCLINK<STR:药店老板,NPCKEYNAME:巫山城药品尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:药品尊者,NPCKEYNAME:巫山城药品尊者,MOVE:1>#]]>
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