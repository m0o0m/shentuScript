<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3287" name="[����]-��ֵ�����(2)" type="1" suggest_level="1" visible="1" next_id="3288">
		<description>
			�ڲɼ�����Ĺ����У��㻹�ռ�����ʲô��ֵĶ������������Ϊ�м�ֵ����ͬ������㱨��Ŷ��û��ѽ�������ϧ!��ô��ȥ���Ҳɼ�5�������ݰɣ��������Ҹ��ı���е�����Ļ���
		</description>
		<dialogue>
			<brief>�ڲɼ�����Ĺ����У��㻹�ռ�����ʲô��ֵĶ������������Ϊ�м�ֵ����ͬ������㱨��Ŷ��û��ѽ�������ϧ!��ô��ȥ���Ҳɼ�5�������ݰɣ��������Ҹ��ı���е�����Ļ���</brief>
			<await>�㻹û�вɼ����㹻��������~</await>
			<finish>��֪�������ݵļ�ֵ��������������ҩ�ļ�Ʒҩ��ѽ��֪���˰ɣ��ٸ�������ı���ɣ���Ȼ����Ϊ�����������Ϣ�Ѿ���ȫ�㹻�ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3286" />
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
			<![CDATA[�������һ��,�ɼ�5��#LINK<MAP:����1,POSX:125,POSY:63,STR:������,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ɼ����������ݽ���#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="������"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="330000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��ֵĽ�1"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>