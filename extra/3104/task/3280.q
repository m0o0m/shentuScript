<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3280" name="[����]-�ƽ��о�����" type="1" suggest_level="1" visible="1" next_id="3281">
		<description>
			�����Ҵ��꣬����ش�½���������顢��ش�½��ʷ��������ͼ��������ϣ�û���˱��Һͻþ������߸��������ϸ�����õ�֮��Ҫ���콻���������Ŷ��ǧ��ҪŪ���ˡ�
		</description>
		<dialogue>
			<brief>�����Ҵ��꣬����ش�½���������顢��ش�½��ʷ��������ͼ��������ϣ�û���˱��Һͻþ������߸��������ϸ�����õ�֮��Ҫ���콻���������Ŷ��ǧ��ҪŪ���ˡ�</brief>
			<await>�ҽ��������ȥ�ɣ�</await>
			<finish>���Ǽ�Ϊ�������ϣ��벻�����Ȼ�ܹ����������Ƿǳ��˲���\n�������������Ź������顢�����ʷ����������Դ��������ͼ�ȷ�����о��Ͳ��룬������Щ���ҳ�һ���µ�·;Ӧ�ò��ѡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3279" />
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
			<![CDATA[�����Ͻ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����Ͻ���#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�þ������ߵıʼ�"  n="1" bind_require="1" />
				<item keyname="�������ߵıʼ�"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="420000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>