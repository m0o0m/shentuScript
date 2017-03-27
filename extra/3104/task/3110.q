<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3110" name="[主线]-补给队的困难（一）" type="1" suggest_level="1" visible="1" next_id="3111">
		<description>
			从巫山城运往龙城的军资在绝路谷遭遇到了恶魔的袭击，龙城曾派遣队伍多次进入绝路谷也了无音信，自己自告奋勇前往绝路谷剿灭恶魔
		</description>
		<dialogue>
			<brief>我们已经派人沿路查探，但是，仅仅逃回来的两名兄弟，他们说完在绝路谷遭遇了恶魔的袭击就断气了，我们先后也派遣了几支队伍进入绝路谷，但是最终却都没有一个人回来，现在正愁不知道怎么办呢。\n　　勇士，看你气度不凡，一定有非人的本事，你愿意帮助我们，把这些恶魔清剿掉吗？</brief>
			<await>\n　　勇士，恶魔都清剿完了吗</await>
			<finish>原来它们是准备在半路上断绝我们的资源补给，还好你来的及时，你清剿恶魔先锋之后，我们已经接收到巫山城输送过来的物资了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3109" />
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
			<![CDATA[去#COLORCOLOR_YELLOW#绝路谷#COLOREND#杀死10只袭击补给队的#LINK<MAP:绝路谷,POSX:129,POSY:93,STR:恶魔先锋,MOVE:1>##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回龙城去告诉#NPCLINK<STR:龙城军需官,NPCKEYNAME:龙城军需官,MOVE:1>#恶魔已经清除，巫山城的补给队正在通往龙城的路上]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="恶魔先锋1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>