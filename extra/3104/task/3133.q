<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3133" name="[����]-��·��Ԯ���壩" type="1" suggest_level="1" visible="1" next_id="3134">
		<description>
			�Ѿ�����˼�Ʒ����ҩ�����ȥ��·�Ǿ������˵Ĺ����ְɣ�
		</description>
		<dialogue>
			<brief>�ţ����Ǽ�Ʒ����ҩ����ȥ�ɣ����º�ֻ����ʱ���Ϳ����������ˡ�
\n����������һö��Ʒ����ҩ�������������ù���ʱ��������������ˣ�������Ϊ�˾�һ���¸ҵ�սʿ��������ȫֵ�õģ�</brief>
			<await>ҩ�أ��ҿ����ˣ�����Ц�ˣ�</await>
			<finish>����ʲôҩ���Ҹе�������Ѹ�ٻظ���̫���ˣ��Ҹо�����Ҫ���ʱ�����ҾͿ��Գ��׸�ԭ��ֻҪ������һ�ã����·;����ȫ�����Լ�ɱ��ȥ��
			\n������ʿ���������л����Ķ����Ҽ��������ˣ��Ժ������裬�ұ������Ը���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3132" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��Ʒ����ҩ"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[����˼�Ʒ����ҩ���Ͽ�ȥ��·�Ƕ�������#NPCLINK<STR:���˵Ĺ�����,NPCKEYNAME:���˵Ĺ�����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����˼�Ʒ����ҩ���Ͽ�ȥ��·�Ƕ�������#NPCLINK<STR:���˵Ĺ�����,NPCKEYNAME:���˵Ĺ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<items>
				<item keyname="��Ʒ����ҩ"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>