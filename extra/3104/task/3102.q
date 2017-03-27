<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3102" name="[主线]-追寻实力" type="1" suggest_level="1" visible="1" next_id="3103">
		<description>
			哈哈，你也发现了吗？不错，每击散一个恶魔的分身，可以得到大量的战斗经验。\n　　当然，提升实力的途径有很多，你可以去找试炼教头求教一番，虽然他长得一副生人勿近的模样，但完全是一个值得尊敬的教头。
		</description>
		<dialogue>
			<brief>哈哈，你也发现了吗？不错，每击散一个恶魔的分身，可以得到大量的战斗经验。\n　　当然，提升实力的途径有很多，你可以去找试炼教头求教一番，虽然他长得一副生人勿近的模样，但完全是一个值得尊敬的教头。</brief>
			<await>别傻站着，快去找试炼教头啊！</await>
			<finish>小子，不要在城里闲逛，没有看到每个人都在忙着吗？龙城是一危险的地方，并不适合游玩！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3101" />
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
			<![CDATA[去龙城的广场找#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#寻求变强的方法]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城的广场找#NPCLINK<STR:试炼教头,NPCKEYNAME:初级试炼教头,MOVE:1>#寻求变强的方法]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>