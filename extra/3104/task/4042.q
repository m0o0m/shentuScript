<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4042" name="[֧��]-��ƽ����" type="2" suggest_level="1" visible="1">
		<script name="4042" />
		<description>
			����Ӣ�۳����갡��û���뵽����ô��͵�28���ˣ���ϧ28��֮��ļ�����Խ��Խϡ�У������Ҳ�ǲ��࣬���������ۡ�\n���������������������ְҵ28-30���ļ����飬���ǿ������ҹ�ƽ������\n������Ҫ�����飬����ȥ�����󶴵õ���
		</description>
		<dialogue>
			<brief>����Ӣ�۳����갡��û���뵽����ô��͵�28���ˣ���ϧ28��֮��ļ�����Խ��Խϡ�У������Ҳ�ǲ��࣬���������ۡ�\n���������������������ְҵ28-30���ļ����飬���ǿ������ҹ�ƽ������\n������Ҫ�����飬����ȥ�����󶴵õ���</brief>
			<await>��������ְҵ��28-30����������</await>
			<finish>�ұ���ʫ�飬����������ƽ���Ȿ�������ȥ�ɡ�\n������ס������30����ʱ���������Ұɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="60" />
			<prologues>
				<group>
					<prologue id="4041" />
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
			<![CDATA[ǰ���ز��������#LINK<MAP:������2,POSX:7,POSY:14,STR:������,MOVE:1>#����÷Ǳ�ְҵ��28��#COLORCOLOR_GOLD#�»��䵶#COLOREND#��30��#COLORCOLOR_GOLD#��������#COLOREND#��28��#COLORCOLOR_GOLD#������#COLOREND#����1��#ITEMGROUP0#������#COLORCOLOR_GOLD#����#COLOREND#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="0" >
					<group_item keyname="�»��䵶" />
					<group_item keyname="��������" />
					<group_item keyname="������" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>