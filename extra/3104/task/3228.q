<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3228" name="[����]-��ħʯ�ߵ�����(5)" type="1" suggest_level="1" visible="1" next_id="3229">
		<description>
			���տ��׼�Ȼ�����Ǵ���ħʯ�����һأ���ô��������ȷ��֤����������ʦ���ڵ���������ţ�����ȷʵ��������ħʯ�ߡ�\n������ʦ����\n��������лл��Ϊ�����ҵ������࣡˳������㽫����ת��������˰ɡ�
		</description>
		<dialogue>
			<brief>���տ��׼�Ȼ�����Ǵ���ħʯ�����һأ���ô��������ȷ��֤����������ʦ���ڵ���������ţ�����ȷʵ��������ħʯ�ߡ�\n������ʦ����\n��������лл��Ϊ�����ҵ������࣡˳������㽫����ת��������˰ɡ�</brief>
			<await>���һص�����ת��������ˡ�</await>
			<finish>������������ո�������ħʯ�ߵ��������ڵõ�֤ʵ�ˡ���Ը���ǰ�Ϣ��\n���������������ǻ���һ����Ҫ����û����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3227" />
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
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>