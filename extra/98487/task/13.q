<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="13" name="��������-������ĵ�����" type="1" suggest_level="1" visible="1" next_id="14">
		<description>
			��ʵ��������������ˣ�ֻ�ǡ����Ұ���Ū����!���������Ȱ���ɱ��һֻ�����˰�,���ܲ����ҵ�һ������?���������Լ�ɱ�ֺ�����.�����Ҽ���������!�Ի���������ĸ���ťΪ��Ӱ�ť,���Դ���ӿ�,������Ӻ�Ϳ��Լ��������,��Ҳ�����Լ��齨���鲢���Ϊ����.
		</description>
		<dialogue>
			<brief>��ʵ��������������ˣ�ֻ�ǡ����Ұ���Ū����!���������Ȱ���ɱ��һֻ�����˰�,���ܲ����ҵ�һ������?���������Լ�ɱ�ֺ�����.�����Ҽ���������!�Ի���������ĸ���ťΪ��Ӱ�ť,���Դ���ӿ�,������Ӻ�Ϳ��Լ��������,��Ҳ�����Լ��齨���鲢���Ϊ����.</brief>
			<await>��ʵ��������������ˣ�ֻ�ǡ����Ұ���Ū����!���������Ȱ���ɱ��һֻ�����˰�,���ܲ����ҵ�һ������?���������Լ�ɱ�ֺ�����.�����Ҽ���������!�Ի���������ĸ���ťΪ��Ӱ�ť,���Դ���ӿ�,������Ӻ�Ϳ��Լ��������,��Ҳ�����Լ��齨���鲢���Ϊ����.</await>
			<finish>��ʵ��������������ˣ�ֻ�ǡ����Ұ���Ū����!���������Ȱ���ɱ��һֻ�����˰�,���ܲ����ҵ�һ������?���������Լ�ɱ�ֺ�����.�����Ҽ���������!�Ի���������ĸ���ťΪ��Ӱ�ť,���Դ���ӿ�,������Ӻ�Ϳ��Լ��������,��Ҳ�����Լ��齨���鲢���Ϊ����.</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="12" />
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
			<![CDATA[ɱ#LINK<MAP:����,POSX:399,POSY:300,STR:������>##MONSTERGROUP0#
��������Զ�Ѱ·��
����ӿ�����Ч�ʣ�
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:�������ϰ�,NPCKEYNAME:����������>#
 ��������Զ�Ѱ·��
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#
]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>