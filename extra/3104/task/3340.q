<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3340" name="[����]-��ת�����з���" type="1" suggest_level="1" visible="1" next_id="3344">
		<script name="3340" />
		<description>
			��������ȫ����λ��������ת֮���Ѿ���ʼ����������ȥת��Զ����ͳ��ɣ������ǵȴ�һ��ʱ�䣬�����з��������ؾ��е�ˮ֮���󣬾Ϳ��Է�����ʽ�Ľ����ˣ�
		</description>
		<dialogue>
			<brief>��������ȫ����λ��������ת֮���Ѿ���ʼ����������ȥת��Զ����ͳ��ɣ������ǵȴ�һ��ʱ�䣬�����з��������ؾ��е�ˮ֮���󣬾Ϳ��Է�����ʽ�Ľ����ˣ�</brief>
			<await>�����з����Ѿ���������Ϣ����Զ����ͳ���~</await>
			<finish>���Ѿ��о������Ѿ���ת�����ں����ؾ��е�ˮ��֮���Ѿ���ʼ���֡���������Ŭ�������Ǹ���Ľ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3339" />
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
			<![CDATA[�ص�������ڴ�,����#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#����֮���Ѿ���ʼ��ת]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڴ�,����#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#����֮���Ѿ���ʼ��ת]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="515000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>