<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3320" name="[����]-��ֵ�ľ��" type="1" suggest_level="1" visible="1" next_id="3321">
		<script name="3320" />
		<description>
			��Ȼ���ǵĽ���������ʧ��,���ڽ��������ʱ���ҷ�����һ����ֵ�ľ�ơ�����ս�����ڼ��ң�����Ͼ��ϸ�鿴����������ҵ���Ҳ��ᷢ��һ�������ܣ�
		</description>
		<dialogue>
			<brief>��Ȼ���ǵĽ���������ʧ��,���ڽ��������ʱ���ҷ�����һ����ֵ�ľ�ơ�����ս�����ڼ��ң�����Ͼ��ϸ�鿴����������ҵ���Ҳ��ᷢ��һ�������ܣ�</brief>
			<await>��ȥ�ɣ��ҵ��ǿ�ľ��Ҫ��ʱ�䣡</await>
			<finish>j*u444^^k@Ehh****^����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3319" />
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
			<![CDATA[�ڳ������㣬�ҵ�Զ����ͳ��˵��#NPCLINK<STR:һ��ľ��,NPCKEYNAME:ľ��,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ڳ������㣬�ҵ�Զ����ͳ��˵��#NPCLINK<STR:һ��ľ��,NPCKEYNAME:ľ��,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>