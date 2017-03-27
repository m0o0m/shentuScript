<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="73" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#个人BOSS之天荒教主" type="1" suggest_level="1" visible="1" next_id="74">
		<script name="任务执行脚本" />
		<description>
			是时候该去限制一下天荒的发展了，此去对决的可是天荒教主。它可有着不少的宝贝。若是成功，那你可就赚大了。
		</description>
		<dialogue>
			<brief>是时候该去限制一下天荒的发展了，此去对决的可是天荒教主。它可有着不少的宝贝。若是成功，那你可就赚大了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>个人BOSS每天都会刷新次数，可以获得海量装备。记得每天都去打一次。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="72" />
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
			<![CDATA[击杀 #UILINK<STR:天荒教主,WND:执行脚本,PARAM:TaskBoss(1)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:物品回收员,NPCKEYNAME:巫山城物品回收员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="天荒教主副本" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="999999" />
			<submit enable="1" idletime="999999" />
		</auto>
	</quest>
</quests>