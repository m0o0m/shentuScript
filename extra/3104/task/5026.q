<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5026" name="[����]-������Ѫ�֣�6��" type="2" suggest_level="1" visible="1">
		<description>
			�Ҵ����𣿻���Ӧ��˵�Ҳ�֪���Դ����Ҵ�δ����ڡ�������Զû��������а��֮�֣���ʼ����ΪѪ��ʦ�������������ǿ����ôҲ���Ա��������գ�����֮�Կ���ħ��Ϊʲôû�����ܹ���⣡��\n�������ִ��ˣ��Һα�������ʱ��Ҫ�����Ƿ��������������Ⱥ�������ߡ�����Ϊ�������Ϊ¯������Ϊ��������������������ѡ�
		</description>
		<dialogue>
			<brief>�Ҵ����𣿻���Ӧ��˵�Ҳ�֪���Դ����Ҵ�δ����ڡ�������Զû��������а��֮�֣���ʼ����ΪѪ��ʦ�������������ǿ����ôҲ���Ա��������գ�����֮�Կ���ħ��Ϊʲôû�����ܹ���⣡��\n�������ִ��ˣ��Һα�������ʱ��Ҫ�����Ƿ��������������Ⱥ�������ߡ�����Ϊ�������Ϊ¯������Ϊ��������������������ѡ�</brief>
			<await>Ѫ������������ָ����������</await>
			<finish>���Կ���ħ�������Ѿ�����ԭ�£���Ȼ��Ҫ����Ϊ�����Ǹ�ɱ�������÷ǳ��ã�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5025" />
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
			<![CDATA[Ѫ������������ָ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[Ѫ������������ָ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="81000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>