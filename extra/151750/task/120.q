<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="120" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����BOSS֮ţħ��" type="1" suggest_level="1" visible="1" next_id="121">
		<script name="����ִ�нű�" />
		<description>
			��ϲ�������ڿ���ȥ��ս����BOSSţħ����	�����Ի�ú����Ĳ��ϼ���Ʒ��װ������ԥʲô���Ͻ�ȥ���԰�
		</description>
		<dialogue>
			<brief>��ϲ�������ڿ���ȥ��ս����BOSSţħ����	�����Ի�ú����Ĳ��ϼ���Ʒ��װ������ԥʲô���Ͻ�ȥ���԰�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>����BOSSÿ�տ���ս1�Ρ�BOSS���������������ٴν�����ս������۸ø�������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="119" />
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
			<![CDATA[��ɱ #UILINK<STR:ţħ��,WND:ִ�нű�,PARAM:TaskBoss(4)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����,NPCKEYNAME:���ε��ϰ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="ţħ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>