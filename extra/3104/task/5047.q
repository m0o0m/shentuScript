<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5047" name="[����]-Ѫ�ֵĹ�����2��" type="2" suggest_level="1" visible="1" next_id="5048">
		<description>
			Ѫ�ֵ����ˣ�Ѫ�ֵ������Ѿ���������ǰ�Ķ�ħϮ���¼����У��㿴�������۵ķ��棬ȫ������ǰ��ħϮ�����Ӻ����¡���ʱ�����Ĵ��񱻶�ħɱ����ֻ��һС���������˾�·�ȣ�����ȥ������ɽ�ǡ�����\n������ʵ�ϣ�û�п�����Ѫ�ֵ����˱���ħɱ�������ǣ��Դ�Ѫ�ֶ���а��֮�󣬴�����˾���Ҳϣ������Ѫ�ֵ����ˡ���������˽���࣬��ɽ�ǵ��ϱ������֪��һЩ��
		</description>
		<dialogue>
			<brief>Ѫ�ֵ����ˣ�Ѫ�ֵ������Ѿ���������ǰ�Ķ�ħϮ���¼����У��㿴�������۵ķ��棬ȫ������ǰ��ħϮ�����Ӻ����¡���ʱ�����Ĵ��񱻶�ħɱ����ֻ��һС���������˾�·�ȣ�����ȥ������ɽ�ǡ�����\n������ʵ�ϣ�û�п�����Ѫ�ֵ����˱���ħɱ�������ǣ��Դ�Ѫ�ֶ���а��֮�󣬴�����˾���Ҳϣ������Ѫ�ֵ����ˡ���������˽���࣬��ɽ�ǵ��ϱ������֪��һЩ��</brief>
			<await>ȥ��ɽ�����ϱ��˽������</await>
			<finish>���ڴ���Ѫ�ֵĹ�����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5046" />
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
			<![CDATA[��#NPCLINK<STR:��ɽ���ϱ�,NPCKEYNAME:��ɽ���ϱ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��ɽ���ϱ�,NPCKEYNAME:��ɽ���ϱ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>