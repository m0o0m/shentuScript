<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3106" name="[����]-����Ϊ��" type="1" suggest_level="1" visible="1" next_id="3107">
		<description>
			�����ʵ�������ÿ��Դ������֣���˵���ǵĵ��ӻ��̣�����Ѱ��һ���������ݵ���ʿ���������Ƽ����㣬�����ȥ������
		</description>
		<dialogue>
			<brief>��˵���ǵĵ��ӻ��̣�����Ѱ��һ���������ݵ���ʿ���������Ƽ����㣬�����ȥ������</brief>
			<await>��ȥ���ӻ��̰ɣ������ڹ㳡�ұߣ�</await>
			<finish>�������ã���������Ҫ�˰���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3104" />
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
			<![CDATA[ȥ������#NPCLINK<STR:�ӻ���,NPCKEYNAME:�����ӻ���,MOVE:1>#��������ʲô���԰�������]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ������#NPCLINK<STR:�ӻ���,NPCKEYNAME:�����ӻ���,MOVE:1>#��������ʲô���԰�������]]>
			</accomplishing>
		</tracker>
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>