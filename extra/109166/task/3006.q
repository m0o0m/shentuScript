<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3006" name="[主线]-龙城告急" type="1" suggest_level="1" visible="1" next_id="3007">
		<description>
			勇士们，大龙帝国国都遗迹龙城正处于危急之中！黑暗的恶魔，再次集结并袭击了龙城，重建的城池再次毁于战火！父神的子民，我们已经退无可退，战斗吧！我们需要物资重建防线，需要更多的勇士参与防守！\n　　——巫山城?天机老人\n　　新来的勇士，龙城危急，急需人们贡献力量！
		</description>
		<dialogue>
			<brief>勇士们，大龙帝国国都遗迹龙城正处于危急之中！黑暗的恶魔，再次集结并袭击了龙城，重建的城池再次毁于战火！父神的子民，我们已经退无可退，战斗吧！我们需要物资重建防线，需要更多的勇士参与防守！\n　　——巫山城?天机老人\n　　新来的勇士，龙城危急，急需人们贡献力量！你是否立志保护龙城，消灭恶魔大军？</brief>
			<await>虽然龙城再次被恶魔摧毁，但我相信每一个努力的少年，他们都将可以为这个破碎的天藏大陆带来希望！</await>
			<finish>自神历7222年结束神战，至今已有189年，恶魔与人类互相积蓄力量，如今，再次决战的时刻已经逼近。谢谢你，新来的勇士！我相信每一个努力的少年都将可以为这个破碎的天藏大陆带来希望！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[找辟岭村的#NPCLINK<STR:银杏村引导员,NPCKEYNAME:银杏村引导员,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:银杏村引导员,NPCKEYNAME:银杏村引导员,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100" ingot="1" bind_ingot="12" integral="11" gold="13" bind_gold="15" >
			<awards>
				<award keyname="木剑"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>