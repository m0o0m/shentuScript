<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3017" name="[����]-Ѱ������" type="1" suggest_level="1" visible="1" next_id="3018">
		<script name="3017" />
		<description>
			��֮���Ի����ˣ����˵���ǿ��֮�⣬����Ϊ��ȱ���㹻��ս�����ܰ�����Ȼ��ˣ��Ǿ�һ��ҪȥѰ�������ˡ������������ѧ��һЩ����Ŷ��
		</description>
		<dialogue>
			<brief>��֮���Ի����ˣ����˵���ǿ��֮�⣬����Ϊ��ȱ���㹻��ս�����ܰ�����Ȼ��ˣ��Ǿ�һ��ҪȥѰ�������ˡ������������ѧ��һЩ����Ŷ��</brief>
			<await>�ڴ������߿����ҵ����̡�</await>
			<finish>������ɧ�꣡�ܹ������ڴ˿̣������˲��õ�Գ�࣬Գ�డ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3016" />
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
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="3500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>