<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4033" name="[֧��]-ʱ֮ɳ����1��" type="2" suggest_level="1" visible="1" next_id="4034">
		<description>
			����ر����������Ԫ����ʱ֮ɳ���һ����ڲر����ڵ�ʱ�䣬��ô���Ԫ�������˶�֪������ʱ֮ɳ��ô���ٲ�����Ҫ����˵������ס��Ŷ�������ӻ��̴����г��ۣ������ȥ������
		</description>
		<dialogue>
			<brief>����ر����������Ԫ����ʱ֮ɳ���һ����ڲر����ڵ�ʱ�䣬��ô���Ԫ�������˶�֪������ʱ֮ɳ��ô���ٲ�����Ҫ����˵������ס��Ŷ�������ӻ��̴����г��ۣ������ȥ������</brief>
			<await>�ҵ�����һ���ӻ��̡�</await>
			<finish>ʱ֮ɳ��������г��ۣ����Լ��鿴���ﵥ�ɣ������׾����ҵ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3153" />
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
			<![CDATA[�ҵ�����#NPCLINK<STR:�ӻ���,NPCKEYNAME:�����ӻ���>#���鿴�����۵Ļ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ҵ�����#NPCLINK<STR:�ӻ���,NPCKEYNAME:�����ӻ���>#���鿴�����۵Ļ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>