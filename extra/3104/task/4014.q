<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4014" name="[֧��]-���Ի������(5)" type="2" suggest_level="1" visible="1">
		<description>
			��������ĺ����ȥ�ɣ������ע��ĸ�׶�����˼�������ǰ��������һ�оͿ��Իָ������ˡ�\n
		</description>
		<dialogue>
			<brief>��������ĺ����ȥ�ɣ������ע��ĸ�׶�����˼�������ǰ��������һ�оͿ��Իָ������ˡ�\n</brief>
			<await>��������ĺ���У���ע��ĸ�׶Զ��ӵ�˼�һ�������ñ��Ի�����ӻָ������ģ�\n</await>
			<finish>ʲô����������ô�ˣ���ѽ�������ƺ��Ѿ�����û�лؼ��ˣ�ĸ��һ���ڼҵȼ��ˣ��ҵ����ϻ�ȥ�ˡ�\n����лл�㣬��ʿ��������ң��һᱨ����ģ�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4011" />
				</group>
				<group>
					<prologue id="4012" />
				</group>
				<group>
					<prologue id="4013" />
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
			<![CDATA[��#LINK<MAP:����3,POSX:66,POSY:96,STR:�ؾ���������,MOVE:1>#����#LINK<MAP:����3Ұ��,POSX:203,POSY:209,STR:�����ؾ�,MOVE:1>#������#NPCLINK<STR:���Ի������,NPCKEYNAME:���Ի������,MOVE:1>#��ǰ������#COLORCOLOR_GREENG#ĸ�׵�˼��#COLOREND#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:���Ի������,NPCKEYNAME:���Ի������,MOVE:1>#�ƺ������ˣ������˵˵���ɣ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ĸ�׵�˼��(���)"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>