<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="33" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����֮��" type="1" suggest_level="1" visible="1" next_id="34">
		<script name="����ִ�нű�" />
		<description>
			ʲô���㻹Ҫ�������߰������ǳ���ţ�����»�����Ҫ������Щ�������ҧ��һ�ڣ����㲻��Ҳ���Ѳ�Ƥ��������ԭ������Ϊ������ȥ��ϣ���ˣ������һ��õȰ���
		</description>
		<dialogue>
			<brief>ʲô���㻹Ҫ�������߰������ǳ���ţ�����»�����Ҫ������Щ�������ҧ��һ�ڣ����㲻��Ҳ���Ѳ�Ƥ��������ԭ������Ϊ������ȥ��ϣ���ˣ������һ��õȰ���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��������һ�����һ���Ϊ��ʲô�����ء���Ϊʲô�����û����������������һ�������С�����˴������Ᵽ��ⲻ���ܹٸ�֮�У���Ѱ��һЩ�ⶾ��ҩ�ݡ���������������������ˣ��������нⶾ���ݡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="32" />
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
			<![CDATA[#LINK<MAP:��򼶴һ��,POSX:44,POSY:119,STR:�ڰ�����,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:���涴һ�㽭������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="4" >
					<group_hunting keyname="ǯ��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>