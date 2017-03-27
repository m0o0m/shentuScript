<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="42" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#打听情况" type="1" suggest_level="1" visible="1" next_id="43">
		<script name="任务执行脚本" />
		<description>
			里面还有好多人呐，本来我们都是抱团出来的，人多好有个照应，谁可曾想它们的数量越来越多。把我们硬生生的冲散了。还请英雄帮忙救一下里面落难之人。
		</description>
		<dialogue>
			<brief>里面还有好多人呐，本来我们都是抱团出来的，人多好有个照应，谁可曾想它们的数量越来越多。把我们硬生生的冲散了。还请英雄帮忙救一下里面落难之人。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>吓死我了，我以为我就会这么完了。谢谢英雄！好人必定有好报！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="41" />
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
			<![CDATA[#LINK<MAP:猪洞一层,POSX:101,POSY:40,STR:食人恶魔,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:小叫花,NPCKEYNAME:食人一小叫花,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="6" >
					<group_hunting keyname="食人恶魔" />
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