<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3209" name="[����]-���ص�����(1)" type="1" suggest_level="1" visible="1" next_id="3210">
		<description>
			���ٳǶԸ�����Ʒ������ǳ����ţ�С��Ҳ����ˡ������账����Ա������æ��ÿ��ֻ�к̵ܶ�һ��ʱ��˯�ߣ����ԣ�����Ѱ��ð���ߵİ�����\n��������˵�����Ы����ħ���������ң������ѵõĲ���ѽ�������ȥ�ռ�10��ħ��Ы�ӵĶ�Һ�ɣ��һ���㱨��ġ�
		</description>
		<dialogue>
			<brief>���ٳǶԸ�����Ʒ������ǳ����ţ�С��Ҳ����ˡ������账����Ա������æ��ÿ��ֻ�к̵ܶ�һ��ʱ��˯�ߣ����ԣ�����Ѱ��ð���ߵİ�����\n��������˵�����Ы����ħ���������ң������ѵõĲ���ѽ�������ȥ�ռ�10��ħ��Ы�ӵĶ�Һ�ɣ��һ���㱨��ġ�</brief>
			<await>�����ȥ�ռ�10��ħ��Ы�ӵĶ�Һ�ɣ��һ���㱨��ġ�</await>
			<finish>������ôǿ�����ʿ��������Ч���������˾�̾ѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3208" />
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
				<trophy monster="ħ��Ы��" item="��Һ" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڶ��ٳǸ�������ħ��Ы�ӣ���ȡ10��#LINK<MAP:���ٳ�,POSX:214,POSY:174,STR:��Һ,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǵ��ӻ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ٳ��ӻ���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="��Һ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>