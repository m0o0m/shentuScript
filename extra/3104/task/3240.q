<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3240" name="[主线]-阻止恶魔的阴谋(4)" type="1" suggest_level="1" visible="1" next_id="3241">
		<description>
			……不对，不对，为了配合它们的袭击行动，为了对东临城的人类造成更多的杀伤，这些毒药必定不会马上发作。这里取了一份东临城水井的井水，请马上带上交交给炼药师化验，尽快制作出解药。
		</description>
		<dialogue>
			<brief>……不对，不对，为了配合它们的袭击行动，为了对东临城的人类造成更多的杀伤，这些毒药必定不会马上发作。这里取了一份东临城水井的井水，请马上带上交交给炼药师化验，尽快制作出解药。</brief>
			<await>带上东临城水井的井水，交给炼药师化验。</await>
			<finish>蚀心之毒！！好歹毒！中毒后的人类，会在一天之后发作，现在已经过去了半天，我们的时间不多了。等着，我立即召集药材商，研究解药……</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3239" />
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
			<![CDATA[找到巫山城的#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>