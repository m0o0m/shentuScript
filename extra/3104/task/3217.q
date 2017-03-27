<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3217" name="[主线]-不能遵守的约定(1)" type="1" suggest_level="1" visible="1" next_id="3218">
		<description>
			又见到你这个优秀的家伙了，听说你奔走四方，没有什么地方可阻止你的脚步，真是让人羡慕呀。\n　　对了，城里的裁缝正在四处打听你呢。哈哈，这就是盛名之累呀，如果没事的话，去找找她吧。
		</description>
		<dialogue>
			<brief>又见到你这个优秀的家伙了，听说你奔走四方，没有什么地方可阻止你的脚步，真是让人羡慕呀。\n　　对了，城里的裁缝正在四处打听你呢。哈哈，这就是盛名之累呀，如果没事的话，去找找她吧。</brief>
			<await>城里的裁缝正在四处打听你，去找找她吧。</await>
			<finish>啊，遇上你真好，我正在找你呢。没什么重要的事，就是听说你四处游行，想知道你是否准备回巫山城。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3216" />
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
			<![CDATA[找到东临城的#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#对话]]>
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