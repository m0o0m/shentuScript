<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5001" name="[����]-ѩ�����ǵĴ�˵��1��" type="2" suggest_level="1" visible="1" next_id="5002">
		<description>
			����Ҫ�����Ǹ����Ϊ�һ��������Ʒ�ԡ���������Ϊ������������Ǳ�Ѱ������Ϊ�չ���Ƥ����Ҫ���ҽӴ��˺ܶ����ˣ��������д�����һֻ�����С���ǣ���û��Ұ�޵��ײУ���ʱ����������˵����ࡣ��ô�����ܾ���ɣ����������Ȥ������ȥ��������У�Ѱ�����˴�����
		</description>
		<dialogue>
			<brief>����Ҫ�����Ǹ����Ϊ�һ��������Ʒ�ԡ���������Ϊ������������Ǳ�Ѱ������Ϊ�չ���Ƥ����Ҫ���ҽӴ��˺ܶ����ˣ��������д�����һֻ�����С���ǣ���û��Ұ�޵��ײУ���ʱ����������˵����ࡣ��ô�����ܾ���ɣ����������Ȥ������ȥ��������У�Ѱ�����˴�����</brief>
			<await>ȥ���ǳ��������Ѱ�����˴�����Ϣ��</await>
			<finish>ð�������������������Σ�յ�ɭ�֣����ȥ�Ļ�һ��С�ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3107" />
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
			<![CDATA[�ҳ���ɭ�ֱ��ϵ�#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#������Ϣ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ҳ���ɭ�ֱ��ϵ�#NPCLINK<STR:������,NPCKEYNAME:������,MOVE:1>#������Ϣ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>