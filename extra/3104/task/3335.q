<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3335" name="[主线]-送交土之旗" type="1" suggest_level="1" visible="1" next_id="3336">
		<description>
			利用你提供的五行晶石，我已经制造了五面阵旗。现在需要一位勇士带上这五面阵旗，交给五位运转五行法阵的尊者。你愿意深入海角秘境吗？\n　　先去交给沉船一层的土尊者吧。
		</description>
		<dialogue>
			<brief>利用你提供的五行晶石，我已经制造了五面阵旗。现在需要一位勇士带上这五面阵旗，交给五位运转五行法阵的尊者。你愿意深入海角秘境吗？\n　　先去交给沉船一层的土尊者吧。</brief>
			<await>还没有找到运转土之法阵的尊者吗？.</await>
			<finish>我已经等待了很久，有了这面土之旗，土之法阵就可以运转了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3334" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="金之旗"  n="1" bind_require="1" />
				<acquire_item keyname="木之旗"  n="1" bind_require="1" />
				<acquire_item keyname="水之旗"  n="1" bind_require="1" />
				<acquire_item keyname="火之旗"  n="1" bind_require="1" />
				<acquire_item keyname="土之旗"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[在沉船一层,将土之旗交给主持土之法阵的#NPCLINK<STR:土尊者,NPCKEYNAME:土尊者,MOVE:1>#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[在沉船一层,将土之旗交给主持土之法阵的#NPCLINK<STR:土尊者,NPCKEYNAME:土尊者,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="土之旗"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
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