<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="56" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�λ�����" type="1" suggest_level="1" visible="1" next_id="57">
		<script name="56q" />
		<description>
			��ô����Ҫ����������һ�ѣ�
		</description>
		<dialogue>
			<brief>��ô����Ҫ����������һ�ѣ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������ֻ��һ����������Ҫȥ�������ǣ�����Ҫ����ʵ���㹻ǿ��Ĺ��ᣬ�����ʸ�ȥ��������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="55" />
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
			<![CDATA[��� #LINK<MAP:���Ǹ���,POSX:112,POSY:140,STR:����>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����Ա,NPCKEYNAME:��ɽ����Ʒ����Ա,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="9" >
					<group_hunting keyname="�����ָ���1" />
					<group_hunting keyname="�����ָ���2" />
					<group_hunting keyname="�����ָ���3" />
					<group_hunting keyname="�����ָ���4" />
					<group_hunting keyname="����ս��" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="��������" />
					<group_hunting keyname="����������" />
					<group_hunting keyname="��������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="2" />
		</auto>
	</quest>
</quests>