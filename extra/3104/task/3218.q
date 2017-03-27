<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3218" name="[主线]-不能遵守的约定(2)" type="1" suggest_level="1" visible="1" next_id="3219">
		<description>
			我在东临城太久了，想寄封信件回巫山城，告诉我可爱的妹妹我和哥哥在这里非常安全，请她不必挂念。\n　　你看我，我还没介绍我的妹妹呢，她是巫山城的裁缝哦。
		</description>
		<dialogue>
			<brief>我在东临城太久了，想寄封信件回巫山城，告诉我可爱的妹妹我和哥哥在这里非常安全，请她不必挂念。\n　　你看我，还没有向你介绍我的妹妹呢，她是巫山城的裁缝哦。</brief>
			<await>回巫山城找裁缝。</await>
			<finish>啊，真好，姐姐寄信回来了呢！听说那里有着恐怖的天魔，被他们吃掉的话，灵魂将永远不能安宁呢，我可是非常担心！……姐姐和哥哥一切都平安就好。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3217" />
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
			<![CDATA[找到巫山城的#NPCLINK<STR:裁缝,NPCKEYNAME:巫山城裁缝,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:裁缝,NPCKEYNAME:巫山城裁缝,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>