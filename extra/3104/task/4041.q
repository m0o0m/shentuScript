<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4041" name="[֧��]-��ȱ�ļ�����" type="2" suggest_level="1" visible="1" next_id="4042">
		<script name="4041" />
		<description>
			��Ϊ���������Ͷ�뵽����а��Ĺ����ս��֮�У���ˣ�17����20����Щ���õļ����鱻�������ġ�������ܼ�ʱ���䣬���ܻᵼ�·ǳ����Ľ����\n�������ԣ������ȥ�������һ�2��������ɣ���Ҫ17����20����Ŷ������սʿ�Ĺ���ն����ʦ������������������˲Ϣ�鶯����ʿ����������ظ�֮���������䡣�ҿ��Խ�������߼��ļ�����Ŷ��\n����ͬʱ��Ϊ���÷����󶴳�Ϊһ����ȫ���������ֵĵط������˳������10ֻΣ�յ��ױ���ʬ��
		</description>
		<dialogue>
			<brief>��Ϊ���������Ͷ�뵽����а��Ĺ����ս��֮�У���ˣ�17����20����Щ���õļ����鱻�������ġ�������ܼ�ʱ���䣬���ܻᵼ�·ǳ����Ľ����\n�������ԣ������ȥ�������һ�2��������ɣ���Ҫ17����20����Ŷ������սʿ�Ĺ���ն����ʦ������������������˲Ϣ�鶯����ʿ����������ظ�֮���������䡣�ҿ��Խ�������߼��ļ�����Ŷ��\n����ͬʱ��Ϊ���÷����󶴳�Ϊһ����ȫ���������ֵĵط������˳������10ֻΣ�յ��ױ���ʬ��</brief>
			<await>ȥ�������ҵ�ָ���ļ����飬������10ֻ�ױ���ʬ��</await>
			<finish>��лѽ��������������Ծȼ��ˣ�\n��������25���Ժ��������Ұɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4040" />
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
			<![CDATA[ǰ���ز��������#LINK<MAP:������2,POSX:7,POSY:14,STR:������,MOVE:1>#�����#COLORCOLOR_GOLD#����ն#COLOREND#��#COLORCOLOR_GOLD#������#COLOREND#��#COLORCOLOR_GOLD#�ظ�֮��#COLOREND#����2��#ITEMGROUP0#��ͬʱ����10ֻ#LINK<MAP:������2,POSX:7,POSY:14,STR:�ױ���ʬ,MOVE:1>##MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="2" bind_require="0" >
					<group_item keyname="����ն" />
					<group_item keyname="������" />
					<group_item keyname="������" />
					<group_item keyname="�ظ�֮��" />
					<group_item keyname="������" />
					<group_item keyname="˲Ϣ�鶯" />
					<group_item keyname="�����" />
				</group>
			</group_items>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="�ױ���ʬ1" />
					<group_hunting keyname="�����ױ���ʬ1" />
					<group_hunting keyname="�ױ���ʬ2" />
					<group_hunting keyname="�����ױ���ʬ2" />
					<group_hunting keyname="�����ױ���ʬ1" />
					<group_hunting keyname="��Ӣ�ױ���ʬ1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>