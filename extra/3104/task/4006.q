<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4006" name="[֧��]-���ֵ�ǯ��(2)" type="2" suggest_level="1" visible="1">
		<description>
			������·���һ�����������ķ�����\n������֪�����ǯ�޻��������ֵ�ǯ��ʮ����������ǹ���룬����������������׵ؽ����׺������ʳ���Ƭ������ŪЩ����ǯ�������о���ν�����������������\n�����㡭���ܰ�����\n
		</description>
		<dialogue>
			<brief>������·���һ�����������ķ�����\n������֪���𣿾�ǯз���������ֵ�ǯ��ʮ����������ǹ���룬����������������׵ؽ����׺������ʳ���Ƭ������ŪЩ����ǯ�������о���ν�����������������\n�����㡭���ܰ�����\n</brief>
			<await>�㻹û�и��Ҵ�����ǯз���������ֵ�ǯ����\n</await>
			<finish>̫���ˣ���Щǯ���㹻���о��ˣ���һ���ܴ������ͬ�������������\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="100" />
			<prologues>
				<group>
					<prologue id="4005" />
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
				<trophy monster="��ǯз1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="3333" />
				<trophy monster="������ǯз1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="��Ӣ��ǯз1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="������1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="3333" />
				<trophy monster="����������1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
				<trophy monster="��Ӣ������1" item="���ֵ�ǯ��" min_num="1" max_num="1" bind_require="1" limit="20" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#COLORCOLOR_GREENG#�ؾ���������#COLOREND#������#LINK<MAP:����2,POSX:140,POSY:70,STR:��ǯз��������,MOVE:1>#��ȡ��#COLORCOLOR_GREENG#���ֵ�ǯ��#COLOREND##ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[���Ѿ�������񣬻ض��ٳǼ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#�ɡ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="���ֵ�ǯ��"  n="20" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="235000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>