<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4016" name="[֧��]-��׽����(2)" type="2" suggest_level="1" visible="1" next_id="4017">
		<description>
			�Դӷ����˸���������������ĺ��֣�����˶��ǳ�����Ȥ�����ҵ���һ�������ˣ���Ҫ����ʮֻ������������ܰ��Ҳ�׽ʮֻ�������һḶ����ܶ౨�ꡣ\n������׽�������������Ѿ����������ã������ȥ���Ƕ���ȡ��\n
		</description>
		<dialogue>
			<brief>�Դӷ����˸���������������ĺ��֣�����˶��ǳ�����Ȥ�����ҵ���һ�������ˣ���Ҫ����ʮֻ������������ܰ��Ҳ�׽ʮֻ�������һḶ����ܶ౨�ꡣ\n������׽�������������Ѿ����������ã������ȥ���Ƕ���ȡ��\n</brief>
			<await>ȥ�����Ƕ���ȡ���Ӱɡ�\n</await>
			<finish>�����ӻ���ȷʵ�������������ʮֻ���ӣ�����ȥ�ظ��ӻ��̰ɡ�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="4015" />
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
			<![CDATA[ȥ�Ҷ��ٳǵ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#����Ҫ#COLORCOLOR_GREENG#����#COLOREND#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�Ҷ��ٳǵ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#����Ҫ#COLORCOLOR_GREENG#����#COLOREND#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="0" >
			<awards>
				<award keyname="����"  n="10" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>