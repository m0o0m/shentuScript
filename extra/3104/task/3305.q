<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3305" name="[����]-��ʦ������" type="1" suggest_level="1" visible="1" next_id="3306">
		<description>
			��ʦ��Ҳ��Ȥ������Ȼ���ϲ����ϣ�������ȴ֪�����ĵ׿϶�����ô�롣����Ǵ�½��Ư���������أ�������Ƕ�ѱ��ʦ�������⣬����ô��������������ء�\n������ô��Ϊ��һ������İ��飬��ȥ�͸�ѱ��ʦ�ɡ�
		</description>
		<dialogue>
			<brief>��ʦ��Ҳ��Ȥ������Ȼ���ϲ����ϣ�������ȴ֪�����ĵ׿϶�����ô�롣����Ǵ�½��Ư���������أ�������Ƕ�ѱ��ʦ�������⣬����ô��������������ء�\n������ô��Ϊ��һ������İ��飬��ȥ�͸�ѱ��ʦ�ɡ�</brief>
			<await>��ȥ��ѱ��ʦ�ɣ�</await>
			<finish>��Ư������������ɲ���ϡ��֮��ѽ������Ȼ�������������������������Ҳ���ȫ�����⡣��˵�ǲ��ǣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="45" max_num="100" />
			<prologues>
				<group>
					<prologue id="3297" />
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
			<![CDATA[����������#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[����������#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:ѱ��ʦ,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�ǹ����"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="240000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ԫ��"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>