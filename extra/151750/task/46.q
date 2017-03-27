<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="46" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#洞穴情况" type="1" suggest_level="1" visible="1" next_id="47">
		<description>
			再先深入下去应该有通往下一层的入口，啧啧啧，这层都这样恐怖了，下层会怎么样，天知道！我怎么知道？哼！好歹我也是修仙之人，上通天文，下知地理。……好吧好吧，之前遇到一个老和尚，他告诉我的。不过前面怪物众多，恐怕只有杀过去了。
		</description>
		<dialogue>
			<brief>再先深入下去应该有通往下一层的入口，啧啧啧，这层都这样恐怖了，下层会怎么样，天知道！我怎么知道？哼！好歹我也是修仙之人，上通天文，下知地理。……好吧好吧，之前遇到一个老和尚，他告诉我的。不过前面怪物众多，恐怕只有杀过去了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>竟有人探寻到此处，想必施主也定不是寻常人等。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="45" />
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
			<![CDATA[#LINK<MAP:猪洞二层,POSX:34,POSY:43,STR:食人蝎蛇,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:老和尚,NPCKEYNAME:食人二老和尚,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="食人蝎蛇" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>