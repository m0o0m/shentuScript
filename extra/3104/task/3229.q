<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3229" name="[����]-��Ϣ�ɣ�Ӣ�ۣ�" type="1" suggest_level="1" visible="1" next_id="3230">
		<description>
			������ֵĸ��𣬸���������˷ǳ����ص���ʧ�������߼�������Ҳû�еõ����У���Ȼ����Ҳ��������������ɣ��һظ߼����ܵĴ��У������������˵�Ŭ�����򣬶������ڰ�������£���ȥ�һ���ЩӢ���ǵ�ʬ�ǡ�\n�������ǲ�Ӧ�������ǵ�ʬ�������ħ����֮�أ������������������Ѱ���
		</description>
		<dialogue>
			<brief>������ֵĸ��𣬸���������˷ǳ����ص���ʧ�������߼�������Ҳû�еõ����У���Ȼ����Ҳ��������������ɣ��һظ߼����ܵĴ��У������������˵�Ŭ�����򣬶������ڰ�������£���ȥ�һ���ЩӢ���ǵ�ʬ�ǡ�\n�������ǲ�Ӧ�������ǵ�ʬ�������ħ����֮�أ������������������Ѱ���</brief>
			<await>�뾡���ҹ�10��Ӣ�۵�ʬ�ǰɡ�</await>
			<finish>��Ϣ�ɣ�Ӣ�ۣ�\n�������ˣ�������һ����������Щ�����Ǵ�����������͢��ص�װ��Ŷ�������㶮�ģ���Ȼʱ���Ѿ���Զ�����ǣ�����������װ�����ɲ�����Ŷ��Ҳ�������Ѿ�����ħ�ǲ�����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3228" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="��ħū��1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħū��2" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����2" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħū��˵��1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħū��˵��2" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħū��˵��3" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħū��˵��4" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����˵��1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����˵��2" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����˵��3" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��ħ����˵��4" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="������ħū��1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="������ħ����1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��Ӣ��ħū��1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="��Ӣ��ħ����1" item="Ӣ�۵�ʬ��" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ��һ�������������ȡ1��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:Ӣ�۵�ʬ��,MOVE:1>##ITEMGROUP0#�������ǵ��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="Ӣ�۵�ʬ��" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>