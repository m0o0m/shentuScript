<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="16" name="��������-Ѱ�ҷ�������3" type="1" suggest_level="1" visible="1" next_id="17">
		<description>
			���Σ������쿴���·����ϰ��Ů�������棬��ȥ��һ�£�������Ů����ȥ�ˡ�
		</description>
		<dialogue>
			<brief>���Σ������쿴���·����ϰ��Ů�������棬��ȥ��һ�£�������Ů����ȥ�ˡ�</brief>
			<await>���Σ������쿴���·����ϰ��Ů�������棬��ȥ��һ�£�������Ů����ȥ�ˡ�</await>
			<finish>�˿���װ�𿿽�װ������ش�½���·��ɲ���ֻ�Ǻÿ����������Ǽ�����Ҳ�Ͻ����˰ɡ�ʲô�㲻�������·��ģ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="15" />
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
		<rewards exp="120" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>