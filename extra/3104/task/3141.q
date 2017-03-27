<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3141" name="[主线]-回复笔记下落" type="1" suggest_level="1" visible="1" next_id="3142">
		<description>
			前几天晚上有几名堕落人类潜入了龙城并且惊动了守卫，一番拼斗后，坠落的人类逃向了邪庙的方向。不知道那个笔记本中都有什么内容，如果是重大秘密就糟糕了，你快回去告诉魔语尊者。
		</description>
		<dialogue>
			<brief>前几天晚上有几名堕落人类潜入了龙城并且惊动了守卫，一番拼斗后，坠落的人类逃向了邪庙的方向。不知道那个笔记本中都有什么内容，如果是重大秘密就糟糕了，你快回去告诉魔语尊者。</brief>
			<await>这么紧急的情况，快去告诉魔语尊者。</await>
			<finish>糟糕，我的研究笔记中，记载了我多年来对封印魔法阵的研究，里面的东西绝不能让恶魔以及那群堕落的人类学去，勇士，你一定要去帮我追回来啊。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3140" />
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
			<![CDATA[快把这严重的消息告诉天荒阵门前的#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[快把这严重的消息告诉龙城广场的#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>