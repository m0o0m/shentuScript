<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4011" name="[֧��]-���Ի������(2)" type="2" suggest_level="1" visible="1" next_id="4012">
		<description>
			��ã��������ʿ��������Ϊʲôվ��������ᣬ������Ϊ�ҵĶ���ʧ���ˣ���������ǰȥ�����ؾ��������棬��һֱ�ڵ�������������һֱ��������������Ӱ���������������˵����ĳ���ƺ������Ҷ��ӵ���Ӱ�������Ƕ��鲼���֣�ʮ�����գ����ܰ��ҾȾ�����\n
		</description>
		<dialogue>
			<brief>��ã��������ʿ��������Ϊʲôվ��������ᣬ������Ϊ�ҵĶ���ʧ���ˣ���������ǰȥ�����ؾ��������棬��һֱ�ڵ�������������һֱ��������������Ӱ���������������˵����ĳ���ƺ������Ҷ��ӵ���Ӱ�������Ƕ��鲼���֣�ʮ�����գ����ܰ��ҾȾ�����\n</brief>
			<await>�����㣬�Ⱦ��ҵĶ��Ӱɣ�\n</await>
			<finish>����˭����������ʲô��\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4010" />
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
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:66,POSY:96,STR:�ؾ���������,MOVE:1>#����#LINK<MAP:����3Ұ��,POSX:203,POSY:209,STR:�����ؾ�,MOVE:1>#���ҵ�#NPCLINK<STR:���Ի������,NPCKEYNAME:���Ի������,MOVE:1># ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:66,POSY:96,STR:�ؾ���������,MOVE:1>#����#LINK<MAP:����3Ұ��,POSX:203,POSY:209,STR:�����ؾ�,MOVE:1>#���ҵ�#NPCLINK<STR:���Ի������,NPCKEYNAME:���Ի������,MOVE:1># ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="70000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>