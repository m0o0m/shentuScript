<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3127" name="[����]-�ϱ�������" type="1" suggest_level="1" visible="1" next_id="3128">
		<description>
			�����ϱ������ҹ��Լ���ȥ�ϱ����￴������ʲô�°�
		</description>
		<dialogue>
			<brief>���ˣ��ղ��ϱ������ҹ��㣬���ȥ��������ʲô�°�</brief>
			<await>��ȥ���ϱ��ɣ������ڹ㳡�м�</await>
			<finish>Ӣ�ۣ��������������ڶ��ս����չ���˷Ƿ���ʵ�������Ѿ������˵����Ĵ��������ã���Ҫȥ��ɽ���𣿲�ȥ����ȥҲû��ϵ����Ϊ��Ҫ������ȥһ������~</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3126" />
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
			<![CDATA[ȥ�������ǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#���Լ���ʲô��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�������ǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#���Լ���ʲô��]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>