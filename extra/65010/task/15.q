<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="15" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�����Ѿ�" type="1" suggest_level="1" visible="1" next_id="16">
		<script name="����ִ�нű�" />
		<description>
			ʲô��������Ҫȥǰ�������ɰ���֮ǰҲ�м�λ��ʿ��ǰ��������������ʧ�ܸ��գ���ҵĸ���ֱ�ӱ�ǰ���ǹ���˲��˺�ѡ�����Ȼ���������Ѿ�����Ҳ���ٶ��ԣ�ϣ�������ܹ��ɹ���
		</description>
		<dialogue>
			<brief>ʲô��������Ҫȥǰ�������ɰ���֮ǰҲ�м�λ��ʿ��ǰ��������������ʧ�ܸ��գ���ҵĸ���ֱ�ӱ�ǰ���ǹ���˲��˺�ѡ�����Ȼ���������Ѿ�����Ҳ���ٶ��ԣ�ϣ�������ܹ��ɹ���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������˳����ˣ���������ʲô�����ʲô���㡭���㶨�ˣ����������������д˵���Ϊ������ʱ�ն��ɴ�����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="14" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:163,POSY:124,STR:ʬ��># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ɽʹ��,NPCKEYNAME:��ɽ����ɽʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="ʬ��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>