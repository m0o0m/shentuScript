<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="11" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��̬��Դ" type="1" suggest_level="1" visible="1" next_id="12">
		<script name="����ִ�нű�" />
		<description>
			ԭ����Ϊǰ��������ĸ�Դ֮���ڣ����Ŵ˴���Ӧ���������һ�ָ�Ϊ���ص������ڸ����ϣ�����Ҹ�Ӧ���ˡ�
		</description>
		<dialogue>
			<brief>ԭ����Ϊǰ��������ĸ�Դ֮���ڣ����Ŵ˴���Ӧ���������һ�ָ�Ϊ���ص������ڸ����ϣ�����Ҹ�Ӧ���ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�����������ˣ��ǹ���ͻȻ������������Һ���ͷ��û�����Ⱦ��ܡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="10" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:110,POSY:108,STR:������># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:�󶴽�������>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="���þ���" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="11000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>