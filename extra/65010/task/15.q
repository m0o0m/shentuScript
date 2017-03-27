<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="15" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#心意已决" type="1" suggest_level="1" visible="1" next_id="16">
		<script name="任务执行脚本" />
		<description>
			什么？少侠是要去前方？不可啊！之前也有几位侠士欲前往消灭这怪物，皆以失败告终，最惨的更是直接被前面那怪物瞬间撕裂……既然少侠心意已决，我也不再多言，希望少侠能够成功。
		</description>
		<dialogue>
			<brief>什么？少侠是要去前方？不可啊！之前也有几位侠士欲前往消灭这怪物，皆以失败告终，最惨的更是直接被前面那怪物瞬间撕裂……既然少侠心意已决，我也不再多言，希望少侠能够成功。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>终于有人出来了，里面现在什么情况？什么？你……搞定了！？少侠这般年纪能有此等作为，假以时日定成大器。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="14" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:163,POSY:124,STR:尸皇># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巫山使节,NPCKEYNAME:巫山城巫山使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="尸王" />
				</group>
			</group_huntings>
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