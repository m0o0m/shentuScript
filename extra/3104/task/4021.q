<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4021" name="[֧��]-�ؾ�����֮��(4)" type="2" suggest_level="1" visible="1">
		<description>
			��ʿ������ת����ֶ��һ����������׼����ʽ�������ӻأ�����һ�彫ӵ����Ϊ����\n
		</description>
		<dialogue>
			<brief>��ʿ������ת����ֶ��һ����������׼����ʽ�������ӻأ�����һ�彫ӵ����Ϊ����\n</brief>
			<await>��ȥת����ֶ���ɡ�\n</await>
			<finish>�����̫���ˣ����ǲ�֪����ô��л��źã���Щ�������Һ������л�⣬�������°ɣ�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4020" />
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
			<![CDATA[ǰ��#LINK<MAP:�������,POSX:33,POSY:60,STR:�����ؾ���ڴ�,MOVE:1>#������Ϣת��#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��#LINK<MAP:�������,POSX:33,POSY:60,STR:�����ؾ���ڴ�,MOVE:1>#������Ϣת��#NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ԫ��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>