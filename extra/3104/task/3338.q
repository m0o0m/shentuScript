<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3338" name="[主线]-送交木之旗" type="1" suggest_level="1" visible="1" next_id="3339">
		<description>
			你身上带来了木之旗吗？木尊者在沉船第四层，找到他，并交给他木之旗吧。
		</description>
		<dialogue>
			<brief>你身上带来了木之旗吗？木尊者在沉船第四层，找到他，并交给他木之旗吧。</brief>
			<await>将木之旗交给木尊者吧~</await>
			<finish>我已经等待了很久，有了这面木之旗，木之法阵就可以运转了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3337" />
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
			<![CDATA[在沉船四层,将木之旗交给主持木之法阵的#NPCLINK<STR:木尊者,NPCKEYNAME:木尊者,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[在沉船四层,将木之旗交给主持木之法阵的#NPCLINK<STR:木尊者,NPCKEYNAME:木尊者,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="木之旗"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="415000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="灵元珠"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>