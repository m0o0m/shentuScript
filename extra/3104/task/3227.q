<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3227" name="[����]-��ħʯ�ߵ�����(4)" type="1" suggest_level="1" visible="1" next_id="3228">
		<description>
			�������װ���ĳ������������ǵĲر����ػ��˻�֪���ĸ��ࡣ������ʦ���Ǵ��������Ĺ�͢��ʦ�����ڴ��������Ĺ�͢��Ʒ�����Ҳ��ܱȵ��˽⡣
		</description>
		<dialogue>
			<brief>�������װ���ĳ������������ǵĲر����ػ��˻�֪���ĸ��ࡣ������ʦ���Ǵ��������Ĺ�͢��ʦ�����ڴ��������Ĺ�͢��Ʒ�����Ҳ��ܱȵ��˽⡣</brief>
			<await>ȥ�����ǵĻþ����������ʰɡ�</await>
			<finish>��ȷ�����տ������ɣ����꣬��ʦҲ�μ��˸����ţ�����������龰��ʦ�����ڱʼ�֮�У��������ǡ�����ʦ�ıʼ��У��������죬�����ʵ۴����˴�����͢�ղص�װ�������оͰ���������տ��ס�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3226" />
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
			<![CDATA[�����ǵ�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#ѯ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#�Ի�]]>
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