<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4017" name="[֧��]-��׽����(3)" type="2" suggest_level="1" visible="1">
		<description>
			���õ������ӣ��ܺá�\n�����ؾ�����������׽������Ҫ�������ڵ�֮�����׽ס����һ��С�ġ�\n
		</description>
		<dialogue>
			<brief>���õ������ӣ��ܺá�\n�����ؾ�����������׽������Ҫ�������ڵ�֮�����׽ס����һ��С�ġ�\n</brief>
			<await>��ֻ��Ҫֱ�ӽ������ڵؾͿ���׽ס���ˣ��м��мǡ�\n</await>
			<finish>��Щ����һ�����������Ǯ��ʵ����̫��л���ˣ����ǲ��������ģ���Щ�����������£�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="4016" />
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
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:68,POSY:133,STR:�ؾ���������,MOVE:1>#����׽10ֻ#LINK<MAP:����3,POSX:68,POSY:133,STR:�ؾ�����,MOVE:1>##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���Ѿ���������񣬻ض��ٳ���#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#�ɡ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="10" bind_require="1" >
					<group_item keyname="������ĸ���" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�������(50��)"  n="1" bind_require="1" />
				<award keyname="��λʯ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>