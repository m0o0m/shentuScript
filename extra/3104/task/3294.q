<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3294" name="[����]-��ʦ������(1)" type="1" suggest_level="1" visible="1" next_id="3295">
		<description>
			��ħ����ת����������ˮ��ʯ����һ�ַǳ���ϡ�Ķ��������������������,���������������ؾ���ԭ��.\n������Ȼ���������ˮ��ʯ���Ұ������󣬵��ǣ��������Ҳ�������׸����㡣���ǡ���\n�������ٳǵ�ѱ��ʦ������Ӣ��������������ˡ�֪ʶԨ�������ʲ�����һֱ����ʾ���������������Ҹе������󡭡���������ܴ���ѱ��ʦ����ͷ�Ļ�����
		</description>
		<dialogue>
			<brief>��ħ����ת����������ˮ��ʯ����һ�ַǳ���ϡ�Ķ��������������������,���������������ؾ���ԭ��.\n������Ȼ���������ˮ��ʯ���Ұ������󣬵��ǣ��������Ҳ�������׸����㡣���ǡ���\n�������ٳǵ�ѱ��ʦ������Ӣ��������������ˡ�֪ʶԨ�������ʲ�����һֱ����ʾ���������������Ҹе������󡭡���������ܴ���ѱ��ʦ����ͷ�Ļ�����</brief>
			<await>�����ҽ���鷳,���ǲ������׸�����ˮ��ʯ�����ܵ�</await>
			<finish>�����ܣ����в������ҵ�Ȩ���������м���������Ȩ���������ҷ��������İ�Ľ�Ǿ������ܵġ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3293" />
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
			<![CDATA[�ض��ٳ�,�ҵ�#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1># �����������ߵ�̬��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ض��ٳ�,�ҵ�#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1># �����������ߵ�̬��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="195000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>