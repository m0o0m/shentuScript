<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4026" name="[�������]-���������������ѭ������" type="2" suggest_level="1" visible="1">
		<description>
			��������������Ͷ�뵽�����ħ��ս��֮�У����ǵľ���Ҳ�ڲ�������\n������������������ܣ����ǣ���ս�������Ҳ����Խ������ȱ���������������Ϊ���ṩ��������[����ħʨ]����[����]���Ƕ���Ҫ��\n�������ڽ��������ǻ��ṩ�����Ľ��Ŷ��\n�����������ɴ�[Ŀ��]���á�
		</description>
		<dialogue>
			<brief>��������������Ͷ�뵽�����ħ��ս��֮�У����ǵľ���Ҳ�ڲ�������\n������������������ܣ����ǣ���ս�������Ҳ����Խ������ȱ���������������Ϊ���ṩ��������[����ħʨ]����[����]���Ƕ���Ҫ��\n�������ڽ��������ǻ��ṩ�����Ľ��Ŷ��\n�����������ɴ�[Ŀ��]���á�</brief>
			<await>��û���ռ����㹻����ƥ�����������������������Ϣ�ɡ�</await>
			<finish>�������Ƿǳ���������ֻҪ�������ڵ�ѱ�����Ϳ��Է���ʹ���ˣ�</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<level enable="1" min_num="32" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ռ�һƥ#COLORCOLOR_GOLD#�����#COLOREND#���������#ITEMGROUP0#�����ύ#COLORCOLOR_GOLD#����ħʨ#COLOREND#��#COLORCOLOR_GOLD#����#COLOREND#����һ�֡���ʾ���������ɴ�[Ŀ��]���á�]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ռ�����������ｻ��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="����ħʨ" />
					<group_item keyname="����" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="1500000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>