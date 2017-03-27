<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3131" name="[主线]-绝路救援（三）" type="1" suggest_level="1" visible="1" next_id="3132">
		<description>
			听闻极品疗伤药有迅速恢复伤势的效果，需要去炼药师那里求取。
		</description>
		<dialogue>
			<brief>一般的药品我学生身上也是有的，既然不能治愈，那普通药材商制作的药恐怕效果也不大，一定得寻找极品疗伤药。你去找炼药师要一枚极品疗伤药吧，就说救人急用。</brief>
			<await>极品疗伤药非乃凡品，具有生死人，肉白骨之功效，重伤之人吃了，即刻即可痊愈，正常人吃了可以长命百岁</await>
			<finish>有一名勇敢的战士因为重伤被困在绝路城吗？\n　　极品疗伤药么，那个药是能瞬间治愈所有伤势，但是保存的时间不长，所以只能在需要的时候立刻制作，只是。。。我手上还缺少一份非常重要的药材，如果你能帮我找回，我可以立刻帮你炼制出极品疗伤药。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3130" />
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
			<![CDATA[去巫山城找#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#求取一枚极品疗伤药]]>
			</progressing>
			<accomplishing>
			<![CDATA[去巫山城找#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#求取一枚极品疗伤药]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>