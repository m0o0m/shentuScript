<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3307" name="[����]-���е�����(1)" type="1" suggest_level="1" visible="1" next_id="3308">
		<description>
			����ʹ�õ���������ʵ��������Ͳ�ε���������������������һ�ָ߲�ε�����������������������������֮���������ǵ�ʵ���ᳬԽ���о��磡\n��������ȷ����ĳ�ֱ�����ת��ˮ���������Ӷ�ʹ��ͨ�����������������������γ���������ɫ���壡�㽫�����Ϣת��ħ�����߰ɡ�
		</description>
		<dialogue>
			<brief>����ʹ�õ���������ʵ��������Ͳ�ε���������������������һ�ָ߲�ε�����������������������������֮���������ǵ�ʵ���ᳬԽ���о��磡\n��������ȷ����ĳ�ֱ�����ת��ˮ���������Ӷ�ʹ��ͨ�����������������������γ���������ɫ���壡�㽫�����Ϣת��ħ�����߰ɡ�</brief>
			<await>ȥ������ħ�����߶Ի�</await>
			<finish>�����ؾ��У����Ҵ�ʦȷ�ϵ��Ǽ������ʵ������������Ѱ�ҵ�������ͼ����Ƭ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3306" />
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
			<![CDATA[�ص����ǣ���#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص����ǣ���#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>