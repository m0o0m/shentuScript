<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3226" name="[����]-��ħʯ�ߵ�����(3)" type="1" suggest_level="1" visible="1" next_id="3227">
		<description>
			������׺��м�ֵ�����������ɣ�����������ȥѯ��װ����ʦ�ɡ���������װ����ǿ�����Ÿ�������裬���Ҷ���ʷ��������װ�����зǳ���̵��˽⡣
		</description>
		<dialogue>
			<brief>������׺��м�ֵ�����������ɣ�����������ȥѯ��װ����ʦ�ɡ���������װ����ǿ�����Ÿ�������裬���Ҷ���ʷ��������װ�����зǳ���̵��˽⡣</brief>
			<await>ȥ����ɽ�ǵĵ�װ����ʦ���ʰɡ�</await>
			<finish>������ԭ�޸������Ҳ�ѯ�����ʼǣ����Գ���ȷ�ϣ����ǵ������������͢��Ʒ���տ��ס���Ȼ����Ϊ��������𻵹������أ�ֻ�ܵó�һ�������Ľ��ۡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3225" />
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
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#ѯ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>