<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="34" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#深入洞穴" type="1" suggest_level="1" visible="1" next_id="35">
		<script name="任务执行脚本" />
		<description>
			这洞穴真的好大，寻常人想必也不会料到这里别有洞天呢。看你这架势似乎还要继续深入下去，往前不远便可进入下一层。只是沿途得小心一些，掉以轻心者说不定要付出生命的代价。
		</description>
		<dialogue>
			<brief>这洞穴真的好大，寻常人想必也不会料到这里别有洞天呢。看你这架势似乎还要继续深入下去，往前不远便可进入下一层。只是沿途得小心一些，掉以轻心者说不定要付出生命的代价。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>呵，这些怪物挺会享受的啊。这么大一个洞穴这么先前都没有人发现呢？不过这里的虫子比一层的难缠多了，真不知道里面还有什么东西。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="33" />
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
			<![CDATA[回复 #NPCLINK<STR:毒虫洞守卫,NPCKEYNAME:蜈蚣洞守卫二层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:毒虫洞守卫,NPCKEYNAME:蜈蚣洞守卫二层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>