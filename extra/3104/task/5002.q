<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5002" name="[����]-ѩ�����ǵĴ�˵��2��" type="2" suggest_level="1" visible="1" next_id="5003">
		<description>
			����Ҫ����С���ǵĹ��£���Ȼ�ӻ����Ѿ�֤���㲢��һ��а����ˣ�������С���ǵ�����Ҳ���ǲ����ԡ�\n��������һֻ�������ԺͰ��İ��ǣ���Ȼ����С�����ǣ�����ʵ��Ҳ����С����˵����������������ᱣ���Ŵ����뿪ɭ�֡�����Ҫȥ���������Ҳ�֪�����������ģ�������ʱ��������ϣ�
		</description>
		<dialogue>
			<brief>����Ҫ����С���ǵĹ��£���Ȼ�ӻ����Ѿ�֤���㲢��һ��а����ˣ�������С���ǵ�����Ҳ���ǲ����ԡ�\n��������һֻ�������ԺͰ��İ��ǣ���Ȼ����С�����ǣ�����ʵ��Ҳ����С����˵����������������ᱣ���Ŵ����뿪ɭ�֡�����Ҫȥ���������Ҳ�֪�����������ģ�������ʱ��������ϣ�</brief>
			<await>�������ҵ�һֻС���ǡ�</await>
			<finish>��Զ����ɭ�ֵĿ��ˣ���á�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5001" />
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
			<![CDATA[��ɭ�����ҵ�#NPCLINK<STR:С����,NPCKEYNAME:С����>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ɭ�����ҵ�#NPCLINK<STR:С����,NPCKEYNAME:С����>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>