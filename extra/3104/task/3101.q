<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3101" name="[����]-�����ħ��" type="1" suggest_level="1" visible="1" next_id="3102">
		<script name="3101" />
		<description>
			һ����ǰ��ħ������ͻϮ����������ɻ����ԵĴ���������ķ�ħ��Ҳ�ܵ����ƻ������ڣ�����ĵĶ�ħ�����Ʒ�ӡ��������Ҫһ���˽��������������ķ�����Ը�������\n������ħ������ѹ��һ���ó����ܷ������Ķ�ħ�����ǵ���ħ���ľ�������ÿɱ��һ�Σ����ͻ�ഴ��һ������һ��ҪС�İ���
		</description>
		<dialogue>
			<brief>һ����ǰ��ħ������ͻϮ����������ɻ����ԵĴ���������ķ�ħ��Ҳ�ܵ����ƻ������ڣ�����ĵĶ�ħ�����Ʒ�ӡ��������Ҫһ���˽��������������ķ�����Ը�������\n������ħ������ѹ��һ���ó����ܷ������Ķ�ħ�����ǵ���ħ���ľ�������ÿɱ��һ�Σ����ͻ�ഴ��һ������һ��ҪС�İ���</brief>
			<await>���꣬�㻹û�д������ħ�ķ������Ͱɣ�</await>
			<finish>������˹�Ȼû���Ƽ����ˣ����ʵ�����˾�̾�����ڣ���ӡ�����ڻָ���ƽ������Ҳ���Դ�һ�����ˣ�����̫��л���ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3100" />
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
			<![CDATA[ͨ�����ǹ㳡��#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#����#COLORCOLOR_YELLOW#��ħ��#COLOREND#��ɱ20ֻ#COLORCOLOR_YELLOW#аħ��ż#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǹ㳡��#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="аħ��ż1" />
					<group_hunting keyname="аħ��ż2" />
					<group_hunting keyname="аħ��ż3" />
				</group>
			</group_huntings>
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