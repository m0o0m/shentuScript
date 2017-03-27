<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="79" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#达到64级" type="1" suggest_level="1" visible="1" next_id="80">
		<script name="任务执行脚本" />
		<description>
			等级不足，还谈什么人生，说什么理想？不用多说了，先去升到64级吧。
		</description>
		<dialogue>
			<brief>等级不足，还谈什么人生，说什么理想？不用多说了，先去升到64级吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>恭喜达到64级，海量任务正等着你呢。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="78" />
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
			<![CDATA[#COLORCOLOR_BROWN#海量经验：#COLOREND# #NPCLINK<STR:装备回收,NPCKEYNAME:巫山城物品回收员,MOVE:1>#
#COLORCOLOR_BROWN#大量经验：#COLOREND# #NPCLINK<STR:每日副本,NPCKEYNAME:巫山城副本使节,MOVE:1>#
#COLORCOLOR_BROWN#安全升级：#COLOREND# #NPCLINK<STR:野外挂机,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:饰品尊者,NPCKEYNAME:首饰店老板,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>