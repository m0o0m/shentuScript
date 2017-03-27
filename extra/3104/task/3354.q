<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3354" name="[主线]-失望的转告" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			虽然此剑已“死”，但它曾是一把了不得的神剑，我如果有办法肯定不惜一切代价将它修复完善，请不要怀疑一名铁匠对一件伟大作品的尊敬！……但可惜我没有办法！请转告此剑的主人吧，我很抱歉！
		</description>
		<dialogue>
			<brief>虽然此剑已“死”，但它曾是一把了不得的神剑，我如果有办法肯定不惜一切代价将它修复完善，请不要怀疑一名铁匠对一件伟大作品的尊敬！……但可惜我没有办法！请转告此剑的主人吧，我很抱歉！</brief>
			<await>抱歉,请向剑的原主人转告我的歉意~</await>
			<finish>虽然很遗憾，不过，还能再次找回早就找失去的东西，我仍然满足了！谢谢你！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3353" />
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
			<![CDATA[去秘境沉船四层,将死亡的剑还给#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去秘境沉船四层,将死亡的剑还给#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="165000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="绝影天履"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>