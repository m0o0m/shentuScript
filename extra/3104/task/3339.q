<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3339" name="[主线]-送交火之旗" type="1" suggest_level="1" visible="1" next_id="3340">
		<description>
			你身上带来了火之旗吗？火尊者在海魔巢穴，找到他，并交给他火之旗吧。那里是海角秘境最危险的地方，一定要小心！
		</description>
		<dialogue>
			<brief>你身上带来了火之旗吗？火尊者在海魔巢穴，找到他，并交给他火之旗吧。那里是海角秘境最危险的地方，一定要小心！</brief>
			<await>将火之旗交给火尊者吧~</await>
			<finish>我已经等待了很久，有了这面火之旗，火之法阵就可以运转了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3338" />
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
			<![CDATA[在海魔巢穴,将火之旗交给主持火之法阵的#NPCLINK<STR:火尊者,NPCKEYNAME:火尊者,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[在海魔巢穴,将火之旗交给主持火之法阵的#NPCLINK<STR:火尊者,NPCKEYNAME:火尊者,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="火之旗"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="515000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
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