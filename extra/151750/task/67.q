<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="67" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�������" type="1" suggest_level="1" visible="1" next_id="68">
		<script name="����ִ�нű�" />
		<description>
			ǰ���ƺ���һ�����ڣ����ǲ�֪��ͨ�������ˡ�����Ĺ��ﻹ���ǲ��٣��Է���һ����ȥ�鿴�������������Щ���˵ļһ�ɡ�
		</description>
		<dialogue>
			<brief>ǰ���ƺ���һ�����ڣ����ǲ�֪��ͨ�������ˡ�����Ĺ��ﻹ���ǲ��٣��Է���һ����ȥ�鿴�������������Щ���˵ļһ�ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��û�뵽��СС��ͣ�����������ͣ�ʵ���ѵá�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="66" />
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
			<![CDATA[#LINK<MAP:��������һ��,POSX:23,POSY:75,STR:��Ļ���,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:������,NPCKEYNAME:�����һ��������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��Ļ���" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>