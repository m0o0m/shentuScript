<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="131" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#ת���ȼ��ﵽ1��" type="1" suggest_level="1" visible="1" next_id="132">
		<script name="����ִ�нű�" />
		<description>
			��ϲ�㣬���ڿ��Կ�ʼת���ˣ�����Ľ�ɫ�����У����Կ�ʼת���ˡ�ת������ת����Ϊ��ת����Ϊ����ͨ����������ʹ��ת������������
		</description>
		<dialogue>
			<brief>��ϲ�㣬���ڿ��Կ�ʼת���ˣ�����Ľ�ɫ�����У����Կ�ʼת���ˡ�ת������ת����Ϊ��ת����Ϊ����ͨ����������ʹ��ת������������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ϲ�㣬�ﵽת���ȼ�1����ת�����Դ����������ɫ�����ԡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="130" />
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
			<![CDATA[#COLORCOLOR_GOLD#�������ӣ�#COLOREND# #UILINK<STR:����ת��,WND:ִ�нű�,PARAM:OpenRoleRein()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#]]>
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
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>