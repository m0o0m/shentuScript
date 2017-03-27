<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="65" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#解除后患" type="1" suggest_level="1" visible="1" next_id="66">
		<script name="任务执行脚本" />
		<description>
			旁边的天荒勇士十分歹毒，只要进去人，它们就从后抄袭。还是得把这个麻烦先解除干净。
		</description>
		<dialogue>
			<brief>旁边的天荒勇士十分歹毒，只要进去人，它们就从后抄袭。还是得把这个麻烦先解除干净。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>终于可以逃了，多谢少侠了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="64" />
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
			<![CDATA[#LINK<MAP:沃玛寺庙一层,POSX:79,POSY:124,STR:天荒勇士,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:财迷,NPCKEYNAME:天荒阵一层财迷,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="天荒勇士" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>