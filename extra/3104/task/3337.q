<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3337" name="[主线]-送交水之旗" type="1" suggest_level="1" visible="1" next_id="3338">
		<script name="3337" />
		<description>
			你身上带来了水之旗吗？水尊者在沉船第三层，找到他，并交给他水之旗吧。
		</description>
		<dialogue>
			<brief>你身上带来了水之旗吗？水尊者在沉船第三层，找到他，并交给他水之旗吧。</brief>
			<await>将水之旗带给水尊者吧~</await>
			<finish>我已经等待了很久，有了这面水之旗，水之法阵就可以运转了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3336" />
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
			<![CDATA[在沉船三层,将水之旗交给主持水之法阵的#NPCLINK<STR:水尊者,NPCKEYNAME:水尊者,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[在沉船三层,将水之旗交给主持水之法阵的#NPCLINK<STR:水尊者,NPCKEYNAME:水尊者,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="水之旗"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="375000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
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