<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5043" name="[剧情]-加布的忏悔（1）" type="2" suggest_level="1" visible="1" next_id="5044">
		<description>
			谢谢你来找我，也谢谢尊者对我的担忧！不过我深入天荒阵有我必须要完成的事情。我已经错了十年，等了十年，我想在我还有力量战斗之前，替自己赎罪！因为我在找被我抛弃的队友！
		</description>
		<dialogue>
			<brief>谢谢你来找我，也谢谢尊者对我的担忧！不过我深入天荒阵有我必须要完成的事情。我已经错了十年，等了十年，我想在我还有力量战斗之前，替自己赎罪！因为我在找被我抛弃的队友！</brief>
			<await>~。</await>
			<finish>我的队友外号叫做血手。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5042" />
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
			<![CDATA[与#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>