<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3231" name="[����]-���µ�ҥ��(1)" type="1" suggest_level="1" visible="1" next_id="3232">
		<description>
			���˽��ʿ������Ϊ�ƿ�������һ�����ƣ�Ϊ������Զ���һ�ǣ�������Ϊ����������а�����Ժܶ��˶��Ե�ʿ����Զ֮��\n�������ڶ��ٳ�����һ�����µĴ��ԣ�����˵����ʿ���й����˶�ħ���ǵģ�һ����Ϊ��ħʯ�߳��ֵ���ħ���������������ŵ�ʿ�Ĳ��ּ��ܡ�\n������Ҫ������࣬�������ħ���������϶�ȡһЩ�����飬��Ը�������һ������
		</description>
		<dialogue>
			<brief>���˽��ʿ������Ϊ�ƿ�������һ�����ƣ�Ϊ������Զ���һ�ǣ�������Ϊ����������а�����Ժܶ��˶��Ե�ʿ����Զ֮��\n�������ڶ��ٳ�����һ�����µĴ��ԣ�����˵����ʿ���й����˶�ħ���ǵģ�һ����Ϊ��ħʯ�߳��ֵ���ħ���������������ŵ�ʿ�Ĳ��ּ��ܡ�\n������Ҫ������࣬�������ħ���������϶�ȡһЩ�����飬��Ը�������һ������</brief>
			<await>ȥ��ħʯ�ߴ����ħ��������ȡһ���������ؼ�</await>
			<finish>ȷʵ�ǵ�ʿ�ļ����顣���ǣ��Ҳ������е�ʿ�����ħ���ᣬ��Ϊû��һ�ų���֮�ģ����޷�����ѧϰ�����İ��塣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3230" />
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
				<trophy monster="��ħ����1" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����2" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��1" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��2" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��3" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��ħ����˵��4" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="������ħ����1" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="��Ӣ��ħ����1" item="�������ؼ�" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ�߶�������㣬������ħ������ȡ1��#LINK<MAP:��ħʯ��2,POSX:11,POSY:188,STR:�������ؼ�,MOVE:1>##ITEMGROUP0#�������ǵ��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="�������ؼ�" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>