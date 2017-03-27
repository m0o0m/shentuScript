<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="33" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#阴霾之地" type="1" suggest_level="1" visible="1" next_id="34">
		<script name="任务执行脚本" />
		<description>
			什么！你还要往里面走啊？真是初生牛犊不怕虎啊，要是让这些毒虫随便咬上一口，即便不死也得脱层皮啊。唉，原本还以为看到出去的希望了，看来我还得等啊。
		</description>
		<dialogue>
			<brief>什么！你还要往里面走啊？真是初生牛犊不怕虎啊，要是让这些毒虫随便咬上一口，即便不死也得脱层皮啊。唉，原本还以为看到出去的希望了，看来我还得等啊。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>呼，吓我一跳！我还以为是什么虫子呢。我为什么在这里？没看出来吗？我是堂堂一名大郎中。最近此处毒虫猖獗，这不是受官府之托，来寻找一些解毒的药草。天地万物皆由阴阳相生相克，附近定有解毒良草。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="32" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞一层,POSX:44,POSY:119,STR:黑暗爬虫,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:江湖郎中,NPCKEYNAME:毒虫洞一层江湖郎中,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="4" >
					<group_hunting keyname="钳虫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>