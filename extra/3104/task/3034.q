<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3034" name="[����]-ծ�����(3)" type="1" suggest_level="1" visible="1" next_id="3035">
		<description>
			��Ԫ������˵���������������޶༸�졣
		</description>
		<dialogue>
			<brief>���£����������鷳��ȥ��Ԫ������̸̸��ֻ���������޼���ʱ���ˡ�\n����һ�а����ˣ�</brief>
			<await>���������������Ƿ��Ǯ�����ڻ�û��������</await>
			<finish>�������Ϲ�Ǯ���˾�Ȼһ��������������ң�ʵ�ڿɺޣ������֪�����Ǯ�Ѿ�֧Ԯ�����ǣ�������ô�����ٴߣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3033" />
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
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>