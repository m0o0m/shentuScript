<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10000" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#前往二层" type="1" suggest_level="1" visible="1" next_id="45">
		<script name="90q" />
		<description>
			这里就交给我们了，里面的情况更危急，你去那里吧。
		</description>
		<dialogue>
			<brief>这里就交给我们了，里面的情况更危急，你去那里吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>我感受到的此处的威压显然比第一次层强烈许多。寻常人若在此处长时间停留，内心必定惊恐万分，更甚或许会造成严重的内伤。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="44" />
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
			<![CDATA[回复 #NPCLINK<STR:食人魔守卫,NPCKEYNAME:食人魔守卫二层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:食人魔守卫,NPCKEYNAME:食人魔守卫二层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="40000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="1" />
		</auto>
	</quest>
</quests>