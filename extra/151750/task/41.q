<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="41" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ʳ����ʧ��" type="1" suggest_level="1" visible="1" next_id="42">
		<script name="����ִ�нű�" />
		<description>
			��ʵ�����Ѩ����ͱ������ˣ�Ҳ�в��ٺ������ǰ��̽Ѱ����ȴû��ʲô�쳣�������������ôһ�죬��Ѩ֮�г��ִ�����ʳ��һ�壬Ҳ��֪����Щ���ﶼ�������ġ����ںö��˻������ڶ����������ǰȥ�ѱ���֮�˾����ȳ���
		</description>
		<dialogue>
			<brief>��ʵ�����Ѩ����ͱ������ˣ�Ҳ�в��ٺ������ǰ��̽Ѱ����ȴû��ʲô�쳣�������������ôһ�죬��Ѩ֮�г��ִ�����ʳ��һ�壬Ҳ��֪����Щ���ﶼ�������ġ����ںö��˻������ڶ����������ǰȥ�ѱ���֮�˾����ȳ���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��������л��������֮�����˶�û��������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="40" />
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
			<![CDATA[#LINK<MAP:��һ��,POSX:130,POSY:120,STR:ʳ������,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�Ƴ�����,NPCKEYNAME:ʳ��һ�Ƴ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="ʳ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>