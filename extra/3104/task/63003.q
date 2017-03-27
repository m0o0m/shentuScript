<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="63003" name="[日常]-天天扫荡" type="3" suggest_level="1" visible="1">
		<description>
			虽然可能会付出流血的牺牲，但是，为了追求强大的力量，每天必要的战斗是非常必要的。正所谓“三天不打，上房揭瓦”，我现在需要你去教训一下那些日益猖獗的怪物们，让他们知道，我们才是天藏大陆的主宰者。
		</description>
		<dialogue>
			<brief>虽然可能会付出流血的牺牲，但是，为了追求强大的力量，每天必要的战斗是非常必要的。正所谓“三天不打，上房揭瓦”，我现在需要你去教训一下那些日益猖獗的怪物们，让他们知道，我们才是天藏大陆的主宰者。</brief>
			<await>呦~呦~~苍茫的天涯下怪物跑，棉棉的天藏大陆是我家~~~</await>
			<finish>很强力啊，居然花了这么多时间，看来你还得再锻炼锻炼啊，明天再来找我，我们继续</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="30" max_num="35" />
			<jobs>
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去扫荡330只30级及以上的怪物再回来找我吧#HUNTLEVEL0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去巫山城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<huntlevels>
				<huntlevel min_num="30"  max_num="300" n="330"/>
			</huntlevels>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="205000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>