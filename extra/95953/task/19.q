<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="19" name="��������-���ֵı���" type="1" suggest_level="1" visible="1" next_id="20">
		<description>
			����ȥ���Ѿ�����ȫ�����ͷ�����ˣ������£��Ųȳ�ѥ��������˿������������
������.����.��ô��ľ��,�㻹��ȥ���������,��������ñ������ȥ,��˵����������о���
��è�Ķ��Ҷ��������������,����������1�鶤��ȥ,��һ����ܿ��ĵ�.
		</description>
		<dialogue>
			<brief>����ȥ���Ѿ�����ȫ�����ͷ�����ˣ������£��Ųȳ�ѥ��������˿���������������������ԣ���ô��ľ�����㻹��ȥ��������ɣ���������ñ������ȥ����˵����������о�����è�Ķ��Ҷ�������������ã�����������1�鶤��ȥ����һ����ܿ��ĵġ�</brief>
			<await>����ȥ���Ѿ�����ȫ�����ͷ�����ˣ������£��Ųȳ�ѥ��������˿���������������������ԣ���ô��ľ�����㻹��ȥ��������ɣ���������ñ������ȥ����˵����������о�����è�Ķ��Ҷ�������������ã�����������1�鶤��ȥ����һ����ܿ��ĵġ�</await>
			<finish>�ⶤ����Ҫ���ң����Ҿ������ˡ����������ȴ��������������������һ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="18" />
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
			<![CDATA[ɱ#LINK<MAP:����,POSX:66,POSY:234,STR:����è>##MONSTERGROUP0# 
  (������Զ�Ѱ·)
  (��ӿ�����Ч��)]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:�������ϰ�,NPCKEYNAME:����������>#
  (������Զ�Ѱ·)
  #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#
]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="����è" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>