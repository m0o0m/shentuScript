<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3042" name="[����]-���ñ���(2)" type="1" suggest_level="1" visible="1" next_id="3043">
		<description>
			��Щ���������ϲ������Ĺ�ͷ�����Ÿ�Ũ����а��֮������Ȼ��֪�����е����飬���ǣ����Կ϶��ж�ħ�������У����������ǵĿ񱩣������ģ����ǿɶ�\n���������ʦͽ����Ա��������ʱ����һ��ǿ���ð���ߣ����ħ�й����ս�����������Щ��ͷ��ȥ��������ʲô�����
		</description>
		<dialogue>
			<brief>��Щ���������ϲ������Ĺ�ͷ�����Ÿ�Ũ����а��֮������Ȼ��֪�����е����飬���ǣ����Կ϶��ж�ħ�������У����������ǵĿ񱩣������ģ����ǿɶ�\n���������ʦͽ����Ա��������ʱ����һ��ǿ���ð���ߣ����ħ�й����ս�����������Щ��ͷ��ȥ��������ʲô�����</brief>
			<await>Ѱ��ʦͽ����Ա�����������˽������</await>
			<finish>��Щ��ͷ���Ѿ���������һ���������Ϣ��Ϊʲô��Ⱥ��ͷ�����ϻ����������Ϣ�أ�\n�������á�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3041" />
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
			<![CDATA[��#NPCLINK<STR:ʦͽ����Ա,NPCKEYNAME:ʦͽ����Ա,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ʦͽ����Ա,NPCKEYNAME:ʦͽ����Ա,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="31000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>