<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3323" name="[����]-���ԹŴ�������(3)" type="1" suggest_level="1" visible="1" next_id="3324">
		<script name="3323" />
		<description>
			��Щ�̿͵İ����ȷʵ�ܹ��ϳ�һ���֡�\n��������һ���ó�αװ��������̿ͣ���αװ��Ϊ�����������˺���һ��֮�С��������Ǹ����������Ҳ����ʶ���ҽ�����ȥѰ����λ�ѽ��뺣���ؾ��ĵ��Ҵ�ʦ��������������֪ʶԨ����
		</description>
		<dialogue>
			<brief>��Щ�̿͵İ����ȷʵ�ܹ��ϳ�һ���֡�\n��������һ���ó�αװ��������̿ͣ���αװ��Ϊ�����������˺���һ��֮�С��������Ǹ����������Ҳ����ʶ���ҽ�����ȥѰ����λ�ѽ��뺣���ؾ��ĵ��Ҵ�ʦ��������������֪ʶԨ����</brief>
			<await>��û��ȥѰ�ҵ��Ҵ�ʦ��?</await>
			<finish>�����������ˣ��ѵ���֪�����Ѿ����صش������ҵ��о���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3322" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��д��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[���뺣���ؾ�����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#ѯ�ʴ̿Ͱ���һ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[���뺣���ؾ�����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#ѯ�ʴ̿Ͱ���һ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��д��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="285000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>