<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="17" name="��������-�·���Ŀγ�" type="1" suggest_level="1" visible="1" next_id="18">
		<description>
			���Σ�Ŷ�����������СѾͷ�������ⶫ���������ĺÿ������ûؼ��ˣ����
���������ϰ����鷳�ˣ���ͷ����������л��ȥ��װ����װ���Ľ������ɲ�����
���ģ�����Ȥ���ҽ�һ����
		</description>
		<dialogue>
			<brief>���Σ�Ŷ�����������СѾͷ�������ⶫ���������ĺÿ������ûؼ��ˣ���ĸ��������ϰ����鷳�ˣ���ͷ����������л��ȥ��װ����װ���Ľ������ɲ����Ҵ��ģ�����Ȥ���ҽ�һ����</brief>
			<await>���Σ�Ŷ�����������СѾͷ�������ⶫ���������ĺÿ������ûؼ��ˣ���ĸ��������ϰ����鷳�ˣ���ͷ����������л��ȥ��װ����װ���Ľ������ɲ����Ҵ��ģ�����Ȥ���ҽ�һ����</await>
			<finish>����ش�½���·�������ֻ�Ǻÿ������ú��á������ν��װ�����·�����װŮװ����㶮�ɣ�ǧ��������Ŷ����Ҫע����ǣ�װ������ְҵ����������ʱ��ѡ����ʲôְҵ����Ӧ��ѡ���Ǹ�ְҵ��װ��������ְҵ��װ���Ǵ��������ġ���F10���Բ鿴���ְҵ��������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="16" />
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
			<![CDATA[ǰ��-#NPCLINK<STR:�·����ϰ�,NPCKEYNAME:�����·�����>#
 ��������Զ�Ѱ·��
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:�·����ϰ�,NPCKEYNAME:�����·�����>#
 ��������Զ�Ѱ·��
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>