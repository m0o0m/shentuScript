<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="22" name="��������-��·�ļ���" type="1" suggest_level="1" visible="1" next_id="10">
		<description>
			������Ҫ��������·�ļ���,����������������ߣ�������ʱ�䣬�������Ҽ������ܶ�����Ȼ����͵����ֱ�ӵ���»��ߵ�����Ҳ�����Զ��ܹ�ȥ.
		</description>
		<dialogue>
			<brief>������Ҫ��������·�ļ���,����������������ߣ�������ʱ�䣬�������Ҽ������ܶ�����Ȼ����͵����ֱ�ӵ���»��ߵ�����Ҳ�����Զ��ܹ�ȥ����HP������ֵ������10�㣬���߱����������ˣ���û���ܲ��ġ�</brief>
			<await>������Ҫ��������·�ļ���,����������������ߣ�������ʱ�䣬�������Ҽ������ܶ�����Ȼ����͵����ֱ�ӵ���»��ߵ�����Ҳ�����Զ��ܹ�ȥ����HP������ֵ������10�㣬���߱����������ˣ���û���ܲ��ġ�</await>
			<finish>������Ҫ��������·�ļ���,����������������ߣ�������ʱ�䣬�������Ҽ������ܶ�����Ȼ����͵����ֱ�ӵ���»��ߵ�����Ҳ�����Զ��ܹ�ȥ����HP������ֵ������10�㣬���߱����������ˣ���û���ܲ��ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="21" />
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
			<![CDATA[ǰ��-#NPCLINK<STR:����ָ��Ա,NPCKEYNAME:����ָ��Ա>#
 ��������Զ�Ѱ·��
 #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:����ָ��Ա,NPCKEYNAME:����ָ��Ա>#
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
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>