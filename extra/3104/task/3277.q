<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3277" name="[主线]-魔语尊者的笔记(1)" type="1" suggest_level="1" visible="1" next_id="3278">
		<description>
			关于神秘现象、生死轮图等方面的资料，魔语尊者那里有更详细更深入的研究。你应该去找找他。
		</description>
		<dialogue>
			<brief>关于神秘现象、生死轮图等方面的资料，魔语尊者那里有更详细更深入的研究。你应该去找找他。</brief>
			<await>你需要去跟魔语尊者谈谈</await>
			<finish>这方面的资料我当然有，但不能轻易交给别人。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3276" />
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
			<![CDATA[去找#NPCLINK<STR:龙城魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#借取笔记]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找#NPCLINK<STR:龙城魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#借取笔记]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>