<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="47" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ʳ��ͳ��" type="1" suggest_level="1" visible="1" next_id="48">
		<script name="47q" />
		<description>
			�����ͨ������ʳ��������һ�㣬��������ʳ��һ���ͳ���������ı���Ϊ�������������󣬿�ϧ���������������ҵ�Ԥ�ϣ���������ֻ���������Ĺ��ȣ�����ֻ���˳���סԪ������������Ѱ���˵ȣ���Ȼ�д˵Ȼ�Ե�����ı��ս�����������ɡ����������������������
		</description>
		<dialogue>
			<brief>�����ͨ������ʳ��������һ�㣬��������ʳ��һ���ͳ���������ı���Ϊ�������������󣬿�ϧ���������������ҵ�Ԥ�ϣ���������ֻ���������Ĺ��ȣ�����ֻ���˳���סԪ������������Ѱ���˵ȣ���Ȼ�д˵Ȼ�Ե�����ı��ս�����������ɡ����������������������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>Ӵ�������ڻ����ˡ�С�һ�����ģ��������ƺ�ʵ���־�������Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="46" />
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
			<![CDATA[ͨ�� #LINK<MAP:������,POSX:24,POSY:53,STR:ʳ��ħ��Ѩ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����Ա,NPCKEYNAME:��ɽ����Ʒ����Ա,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="��ɫ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>