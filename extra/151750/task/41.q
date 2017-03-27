<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="41" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#食人族失控" type="1" suggest_level="1" visible="1" next_id="42">
		<script name="任务执行脚本" />
		<description>
			其实这个洞穴很早就被发现了，也有不少好奇的人前来探寻过，却没有什么异常。不曾想会有这么一天，洞穴之中出现大量的食人一族，也不知道这些怪物都是哪来的。现在好多人还被困在洞里，还请少侠前去把被困之人尽数救出。
		</description>
		<dialogue>
			<brief>其实这个洞穴很早就被发现了，也有不少好奇的人前来探寻过，却没有什么异常。不曾想会有这么一天，洞穴之中出现大量的食人一族，也不知道这些怪物都是哪来的。现在好多人还被困在洞里，还请少侠前去把被困之人尽数救出。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>大侠！感谢大侠救命之恩，此恩没齿难忘。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="40" />
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
			<![CDATA[#LINK<MAP:猪洞一层,POSX:130,POSY:120,STR:食人妖精,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:推车难民,NPCKEYNAME:食人一推车难民,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="食人妖精" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>