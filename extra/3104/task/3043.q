<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3043" name="[����]-���ñ���(3)" type="1" suggest_level="1" visible="1" next_id="3045">
		<description>
			���ǳ�ȡ��ħ�ľ�Ѫ�뽩ʬ֮Ѫ��Ѫ������а��ħ������մȾ��а��֮Ѫ�����ã����ø���ǿ��Ϳ񱩣�\n    ��ħ��Ȼ��ȡ����ʬ֮Ѫ����ô��������Ҳһ�������˱�ʣ���ȥ��������Ϲ�
		</description>
		<dialogue>
			<brief>���ǳ�ȡ��ħ�ľ�Ѫ�뽩ʬ֮Ѫ��Ѫ������а��ħ������մȾ��а��֮Ѫ�����ã����ø���ǿ��Ϳ񱩣�\n    ��ħ��Ȼ��ȡ����ʬ֮Ѫ����ô��������Ҳһ�������˱�ʣ���ȥ��������Ϲ�</brief>
			<await>�ر�������ˣ�</await>
			<finish>ԭ����ˣ��ҿ����������Щ��ͷ������һ�������ö�ħ����ı�óѡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3042" />
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
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="32000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>