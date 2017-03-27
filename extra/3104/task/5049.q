<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5049" name="[剧情]-血手的过往（4）" type="2" suggest_level="1" visible="1">
		<description>
			据我所知，村民在得知血手堕入邪恶后，就开始疏远了他的亲人，此后，血手的亲人开始慢慢地遭受大量的辱骂和嘲讽。当恶魔袭击村子的时候，没有人去关注和帮助他们，毫无置疑，血手的亲人最终死在恶魔的手中。前段时间关于通缉令中血手所杀的人，便是曾肆无忌惮辱骂过血手的亲人的。
		</description>
		<dialogue>
			<brief>据我所知，村民在得知血手堕入邪恶后，就开始疏远了他的亲人，此后，血手的亲人开始慢慢地遭受大量的辱骂和嘲讽。当恶魔袭击村子的时候，没有人去关注和帮助他们，毫无置疑，血手的亲人最终死在恶魔的手中。前段时间关于通缉令中血手所杀的人，便是曾肆无忌惮辱骂过血手的亲人的。</brief>
			<await>~。</await>
			<finish>在天荒阵和邪庙中，有很多为追求力量而堕落的人类，他们大部分以前曾是与恶魔战斗的勇士，可惜……</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5048" />
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
			<![CDATA[继续与#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[继续与#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>