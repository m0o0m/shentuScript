<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3101" name="[主线]-清理封魔阵" type="1" suggest_level="1" visible="1" next_id="3102">
		<script name="3101" />
		<description>
			一个月前恶魔发动了突袭，对龙城造成毁灭性的打击，我身后的封魔阵也受到了破坏。现在，里面的的恶魔正冲破封印，我们需要一个人进入其中清理他的分身，你愿意帮我吗？\n　　封魔阵里镇压着一个擅长傀儡分身术的恶魔，除非等他魔力耗尽，否则每杀他一次，他就会多创造一个分身，一定要小心啊！
		</description>
		<dialogue>
			<brief>一个月前恶魔发动了突袭，对龙城造成毁灭性的打击，我身后的封魔阵也受到了破坏。现在，里面的的恶魔正冲破封印，我们需要一个人进入其中清理他的分身，你愿意帮我吗？\n　　封魔阵里镇压着一个擅长傀儡分身术的恶魔，除非等他魔力耗尽，否则每杀他一次，他就会多创造一个分身，一定要小心啊！</brief>
			<await>少年，你还没有处理完恶魔的分身，加油吧！</await>
			<finish>天机老人果然没有推荐错人！你的实力让人惊叹，现在，封印阵终于恢复了平静，我也可以喘一口气了，真是太感谢你了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3100" />
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
			<![CDATA[通过龙城广场的#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#进入#COLORCOLOR_YELLOW#封魔阵#COLOREND#击杀20只#COLORCOLOR_YELLOW#邪魔人偶#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城广场找#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="邪魔人偶1" />
					<group_hunting keyname="邪魔人偶2" />
					<group_hunting keyname="邪魔人偶3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>