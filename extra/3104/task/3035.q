<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3035" name="[����]-ծ�����(4)" type="1" suggest_level="1" visible="1" next_id="3036">
		<description>
			�ǳ���Ǹһֱû��ʵ��֧��װ����ʦ�ĳ�ŵ��\n�������²��������ˣ������ɣ�������֮���ϵ������ȥ����˵����Ŀǰ�ʽ��е��鷳��������֧��һ��Ǯ��װ����ʦ�ɡ������Ӧ�ģ�
		</description>
		<dialogue>
			<brief>�ǳ���Ǹһֱû��ʵ��֧��װ����ʦ�ĳ�ŵ��\n�������²��������ˣ������ɣ�������֮���ϵ������ȥ����˵����Ŀǰ�ʽ��е��鷳��������֧��һ��Ǯ��װ����ʦ�ɡ������Ӧ�ģ�</brief>
			<await>����֮��Ի���</await>
			<finish>ԭ��������Ⱦ��ף��õģ��Ǿ�����������װ����ʦ���о��ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3034" />
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
			<![CDATA[��#NPCLINK<STR:��֮��,NPCKEYNAME:��֮��,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��֮��,NPCKEYNAME:��֮��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>