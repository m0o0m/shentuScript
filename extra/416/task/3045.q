<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3045" name="[����]-����ָ��" type="1" suggest_level="1" visible="1">
		<description>
			�ǳ���лӢ�۶���ɽ�������Ĺ��ף��������ڲ��ǿ��ĵ�ʱ��ħ���ѱ���ѹ���������ö�ȴħ��������������ϣ��Ӣ��ǰȥ��ɱ��
		</description>
		<dialogue>
			<brief>Ҫǿ�������ǿ��ļ��ܣ���ɽ�Ƕ���Ŀ��У�Զ��Ӣ�����������𽥸��գ�Ӣ��Я��ǿ���ܿɱ�ħ�긽�壬Ӣ����������ħ���ȡǿ���ܣ����ύһ���ͼ���������ң�</brief>
			<await>ȥ����ɱ���ã��ύ�ͼ����������</await>
			<finish>ǿ��ķ���ָ����ֻ��ǿ��ļ��ܲ�����������ǿ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3044" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="����ҩ��"  n="3" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#ɱ����ʬ����
#LINK<MAP:������1,POSX:57,POSY:311,STR:�ͼ�������,MOVE:1>#���һ���ͼ�������#ITEMGROUP0#
#COLORCOLOR_SKYBLUE#Ps���ƶ��䣬����ն��������#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="0" >
					<group_item keyname="ʩ����" />
					<group_item keyname="��ɱ����" />
					<group_item keyname="������" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="50000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>