<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="90" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#ѫ��������2��" type="1" suggest_level="1" visible="1" next_id="10002">
		<script name="����ִ�нű�" />
		<description>
			ѫ�¿��Լ���������ɫ�������������Ҿ����������ܣ���Ҫ���ĳɾͻ��֡��ɾͻ��ֿ���ͨ����ȡ�ɾͻ��߹��򽫾�ӡ��������
		</description>
		<dialogue>
			<brief>ѫ�¿��Լ���������ɫ�������������Ҿ����������ܣ���Ҫ���ĳɾͻ��֡��ɾͻ��ֿ���ͨ����ȡ�ɾͻ��߹��򽫾�ӡ��������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Ҫ���������������۴�BOSS���Ǵ�ܣ�����һ���������õĹ���װ����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="89" />
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
			<![CDATA[#COLORCOLOR_BROWN#����򿪣�#COLOREND# #UILINK<STR:ѫ������,WND:ִ�нű�,PARAM:TaskAchieve()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>