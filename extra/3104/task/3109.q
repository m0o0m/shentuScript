<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3109" name="[����]-��ѯ�������ԭ��" type="1" suggest_level="1" visible="1" next_id="3110">
		<script name="3109" />
		<description>
			�����������ؽ�֮�У�ÿ�ն���Ҫ�ĺ��������ʡ����ǣ���������������ٳٳ�û�г��֣�����������Ѿ�������û�������ˣ�ǰ������ٴ����������׳���ʲô״�������Ǿ���������ϵ�����֮��
		</description>
		<dialogue>
			<brief>��Ҳ�����ˣ������������ؽ�֮�У�ÿ�ն���Ҫ�ĺ��������ʡ����ǣ���������������ٳٳ�û�г��֣�����������Ѿ�������û�������ˣ�����ǰ������ٴ����������׳���ʲô״�������Ǿ���������ϵ�����֮�У���ץ��ʱ��ǰ���ɣ�</brief>
			<await>лл�㰡</await>
			<finish>�������ﴢ���ŵ����ʣ����ֻ������֮�á����ؽ������У�����Ҫ��������Դ����ɽ�ǵ�֧�֡����ڵ������ǣ������Ѿ�������û���յ���ɽ�����͹����������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3108" />
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
			<![CDATA[ȥ�������Ϸ���#NPCLINK<STR:���Ǿ����,NPCKEYNAME:���Ǿ����,MOVE:1>#����鿴���ʳ��͵�����ԭ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�������Ϸ���#NPCLINK<STR:���Ǿ����,NPCKEYNAME:���Ǿ����,MOVE:1>#����鿴���ʳ��͵�����ԭ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>