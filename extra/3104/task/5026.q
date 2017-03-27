<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5026" name="[剧情]-堕落者血手（6）" type="2" suggest_level="1" visible="1">
		<description>
			我错了吗？或许应该说我不知道对错，但我从未曾后悔。力量永远没有正义与邪恶之分，我始终认为血禅师的力量如果更加强大，那么也可以被我们掌握，并用之对抗恶魔，为什么没有人能够理解！？\n　　我又错了，我何必在临死时还要介意是否有人理解我们这群“堕落者”的行为！？天地为炉，众生为铁，都不过苦苦挣扎而已。
		</description>
		<dialogue>
			<brief>我错了吗？或许应该说我不知道对错，但我从未曾后悔。力量永远没有正义与邪恶之分，我始终认为血禅师的力量如果更加强大，那么也可以被我们掌握，并用之对抗恶魔，为什么没有人能够理解！？\n　　我又错了，我何必在临死时还要介意是否有人理解我们这群“堕落者”的行为！？天地为炉，众生为铁，都不过苦苦挣扎而已。</brief>
			<await>血手已死，将结局告诉天机老人</await>
			<finish>不对抗恶魔的入侵已经难以原谅，居然还要肆意为恶，正是该杀！你做得非常好！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5025" />
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
			<![CDATA[血手已死，将结局告诉#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[血手已死，将结局告诉#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="81000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>