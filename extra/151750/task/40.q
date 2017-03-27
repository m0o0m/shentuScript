<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="40" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#前往食人魔" type="1" suggest_level="1" visible="1" next_id="41">
		<script name="40q" />
		<description>
			那就你去吧。不过一个比毒虫洞更难应付的地方。若没有点实力，去了也是送死。一路小心，若是不敌，不要莽撞，留得青山在不愁没柴烧。
		</description>
		<dialogue>
			<brief>那就你去吧。不过一个比毒虫洞更难应付的地方。若没有点实力，去了也是送死。一路小心，若是不敌，不要莽撞，留得青山在不愁没柴烧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>谢天谢地你来了，真是苍天保佑啊。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="39" />
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
			<![CDATA[回复 #NPCLINK<STR:食人魔守卫,NPCKEYNAME:食人魔守卫一层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:食人魔守卫,NPCKEYNAME:食人魔守卫一层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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