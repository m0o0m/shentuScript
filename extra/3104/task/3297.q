<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3297" name="[����]-���֮��" type="1" suggest_level="1" visible="1" next_id="3305">
		<script name="3297" />
		<description>
			ʲô�����֮��������ǣ������ȫ��½��Ư����������û��֮һ��\n������Ȼ�������ˣ�������䱦���ɲ��ǽ�Ҿ����򵽵ġ�����˵���·��ֵĺ����ؾ��У��ؾ�������һ�����ٿ����ڷ��з�����������֣���������Ϊ��Ū��������ǹ���ÿ����͸��㡣
		</description>
		<dialogue>
			<brief>ʲô�����֮��������ǣ������ȫ��½��Ư����������û��֮һ��\n������Ȼ�������ˣ�������䱦���ɲ��ǽ�Ҿ����򵽵ġ�����˵���·��ֵĺ����ؾ��У��ؾ�������һ�����ٿ����ڷ��з�����������֣���������Ϊ��Ū��������ǹ���ÿ����͸��㡣</brief>
			<await>��û���ҵ��ؾ�������������</await>
			<finish>�������Ǻ�ˬ����������ǹ���ñ����������ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3296" />
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
				<trophy monster="�ؾ�����1" item="�ؾ�����������" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="��Ӣ�ؾ�����1" item="�ؾ�����������" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
				<trophy monster="�����ؾ�����1" item="�ؾ�����������" min_num="1" max_num="1" bind_require="1" limit="1" chance="1500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ�����ؾ�����#LINK<MAP:����3,POSX:69,POSY:134,STR:�ؾ�����,MOVE:1>#�����ҵ�һ��#LINK<MAP:����3,POSX:69,POSY:134,STR:�ؾ�����������,MOVE:1>##ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ��#NPCLINK<STR:������,NPCKEYNAME:��ɽ��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�ؾ�����������"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="235000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�ǹ����"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>