<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="23" name="��������-���ҩ��" type="1" suggest_level="1" visible="1" next_id="24">
		<description>
			��Ȼ���ˣ���˳����Ұ���°ɡ��������ֹֽж�֩�룬֩��������ʮ������ҩ�ģ������������
������׸������������ں��ʲ������������������Ǹ��֣����ܰ���ȡһ������
		</description>
		<dialogue>
			<brief>��Ȼ���ˣ���˳����Ұ���°ɡ��������ֹֽж�֩�룬֩��������ʮ������ҩ�ģ������������
������׸������������ں��ʲ������������������Ǹ��֣����ܰ���ȡһ������</brief>
			<await>��Ȼ���ˣ���˳����Ұ���°ɡ��������ֹֽж�֩�룬֩��������ʮ������ҩ�ģ������������
������׸������������ں��ʲ������������������Ǹ��֣����ܰ���ȡһ������</await>
			<finish>�������������������ҩ���Ҿͷ����ˡ���һ����ǵ��ڹ����ϼ�������֣����ˣ����㲻����ҩҲ������������
</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="20" />
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
			<![CDATA[ɱ#LINK<MAP:����,POSX:240,POSY:398,STR:��֩��>##MONSTERGROUP0#
��������Զ�Ѱ·��
����ӿ�����Ч�ʣ�
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:ҩ���ϰ�,NPCKEYNAME:����ҩ��>#
 ��������Զ�Ѱ·��
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��֩��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>