<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="11" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#事态根源" type="1" suggest_level="1" visible="1" next_id="12">
		<script name="任务执行脚本" />
		<description>
			原本以为前方就事情的根源之所在，方才此处感应到更深处有另一种更为神秘的力量在更深处，希望是我感应错了。
		</description>
		<dialogue>
			<brief>原本以为前方就事情的根源之所在，方才此处感应到更深处有另一种更为神秘的力量在更深处，希望是我感应错了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>真是吓死我了，那怪物突然出现在我身后，幸好我头都没回撒腿就跑。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="10" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:110,POSY:108,STR:骷髅王># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:江湖郎中,NPCKEYNAME:矿洞江湖郎中>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="骷髅精灵" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="11000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>