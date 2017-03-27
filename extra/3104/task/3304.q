<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3304" name="[主线]-藏宝阁守护人的笔记(2)" type="1" suggest_level="1" visible="1" next_id="3275">
		<script name="3304" />
		<description>
			海角秘境是在海底发现的一个秘密空间，那里有着目前已知最凶残的怪物，没有实力可不要轻易进入冒险哦。如果你充满自信，那么，通过我就可以传送进入海角秘境了。\n　　我确实见过小诗月，是的，她已经进入了海角秘境之中。你要把她找回来吗？那赶紧去吧！
		</description>
		<dialogue>
			<brief>海角秘境是在海底发现的一个秘密空间，那里有着目前已知最凶残的怪物，没有实力可不要轻易进入冒险哦。如果你充满自信，那么，通过我就可以传送进入海角秘境了。\n　　我确实见过小诗月，是的，她已经进入了海角秘境之中。你要把她找回来吗？那赶紧去吧！</brief>
			<await>还没有找到小诗月吗？</await>
			<finish>哼，瞎说。谁说我有麻烦了，我只是……\n　　不过嘛，既然你诚心愿意提供帮助，我就勉强接受了。可不是我需要哦，只是不想让你白跑了一趟而已。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3274" />
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
			<![CDATA[进入海角秘境，寻找遇到麻烦的#NPCLINK<STR:小诗月,NPCKEYNAME:小诗月,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[进入海角秘境，寻找遇到麻烦的#NPCLINK<STR:小诗月,NPCKEYNAME:小诗月,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>