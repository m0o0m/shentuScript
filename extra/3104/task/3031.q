<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3031" name="[����]-��ȡ֧��" type="1" suggest_level="1" visible="1" next_id="3032">
		<description>
			Ϊ�˽ҿ�װ��ǿ�����ռ����ܣ��ҽ����˳��ڵ��о�������һ���Ӵ�Ŀ�֧��\n����Ԫ����ֵ���˴�Ӧ��֧���ң���ȴһֱû��ʵ�С���ͷ����Ƥ������ί����ȥ���Ҵݴ��ء�
		</description>
		<dialogue>
			<brief>Ϊ�˽ҿ�װ��ǿ�����ռ����ܣ��ҽ����˳��ڵ��о�������һ���Ӵ�Ŀ�֧��\n����Ԫ����ֵ���˴�Ӧ��֧���ң���ȴһֱû��ʵ�С���ͷ����Ƥ������ί����ȥ���Ҵݴ��ء�</brief>
			<await>֧��Ԫ�����˴ݿ</await>
			<finish>�ҵ�ȷ��Ӧ��֧����ʦ���о���ֻ�����ʱ���ҵ��ʽ�ǳ����š��������һ�������ŵ�ģ���������ûǮѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3030" />
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
			<![CDATA[��#NPCLINK<STR:Ԫ����ֵ,NPCKEYNAME:Ԫ����ֵ,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:Ԫ����ֵ,NPCKEYNAME:Ԫ����ֵ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="34000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ь"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>