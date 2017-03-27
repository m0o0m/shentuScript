<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3142" name="[主线]-追回研究笔记" type="1" suggest_level="1" visible="1" next_id="3143">
		<description>
			一定是那群坠落的人类把笔记偷走了，里面记载着我这几年的对封印魔阵的研究，不能让妖魔学会里面的内容，现在就去东北方向的邪庙，从夜行僧身上找回阵法研究笔记！
		</description>
		<dialogue>
			<brief>一定是那群坠落的人类把笔记偷走了，里面记载着我这几年的对封印魔法阵的研究，不能让妖魔学会里面的内容，现在就去东北方向的邪庙，从夜行僧身上找回阵法研究笔记！</brief>
			<await>勇士，研究笔记追回来了吗</await>
			<finish>太好了，看来他们还没破解掉笔记上的封印，还未看见其中的内容，里面的内容绝不能让他们学会，否则他们将会更加容易破除封印。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3141" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="夜行僧1" item="阵法研究笔记" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="挖肉夜行僧1" item="阵法研究笔记" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="超级夜行僧1" item="阵法研究笔记" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
				<trophy monster="精英夜行僧1" item="阵法研究笔记" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[深入#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:104,POSY:196,STR:天荒邪庙,MOVE:1>##COLOREND#,从#LINK<MAP:邪庙1,POSX:104,POSY:196,STR:夜行僧,MOVE:1>#身上追回#COLORCOLOR_GREENG#研究笔记#COLOREND##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[尽快把研究笔记带回去交给天荒阵前的#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="阵法研究笔记" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>