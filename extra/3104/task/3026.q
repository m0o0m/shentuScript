<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3026" name="[����]-�ػ�����" type="1" suggest_level="1" visible="1" next_id="3027">
		<script name="3026" />
		<description>
			������Ӧ�������ǵĺ��ٶ������𣿰�����Խ���������������һ���������ܶ����Ѱɣ�\n�����ҷǳ������������ѡ�񣬲��������ʵ���д�����ѽ��Ҫ֪�������Ǽ�ʹ��ͼ��Ķ�ħ��ҲҪ����ǿ��\n��������Ȼ��ֲ��������ħ���������ǵ�ս������ʹ��������Ҳ������ϧ����ô�����������������Ķ�־�������԰ɣ�
		</description>
		<dialogue>
			<brief>������Ӧ�������ǵĺ��ٶ������𣿰�����Խ���������������һ���������ܶ����Ѱɣ�\n�����ҷǳ������������ѡ�񣬲��������ʵ���д�����ѽ��Ҫ֪�������Ǽ�ʹ��ͼ��Ķ�ħ��ҲҪ����ǿ��\n��������Ȼ��ֲ��������ħ���������ǵ�ս������ʹ��������Ҳ������ϧ����ô�����������������Ķ�־�������԰ɣ�</brief>
			<await>��ô�����������������Ķ�־�������԰ɣ�</await>
			<finish>ֻҪӵ�����ħ����һս��������������ش�½�������ػ��ߣ�Ҳ�������ش�½����������𾴣�\n�����ӽ��Ժ��㽫�縺���ػ���ص�ʹ����Ҳ������һ�������ٹ��뾣���ĵ�·��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3025" />
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
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>