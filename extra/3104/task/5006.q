<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5006" name="[����]-ѩ�����ǵĴ�˵��6��" type="2" suggest_level="1" visible="1" next_id="5007">
		<description>
			Ѱ�Ұ��ǵ�С���ǣ�������Ȥ������ʵ���������Ѿ����������ǣ������ȥ����ħ���Ļ���\n����������֪����½���ڵİ���ֻ������ħ��������������Ҳ�����ˣ��������������ߴ��˿�����Ⱥ�������µģ������˳��ҿ�û����˵���ǵĹ��¡�ȥ�ɣ�������ħ������7ֻ���ǡ�
		</description>
		<dialogue>
			<brief>Ѱ�Ұ��ǵ�С���ǣ�������Ȥ������ʵ���������Ѿ����������ǣ������ȥ����ħ���Ļ���\n����������֪����½���ڵİ���ֻ������ħ��������������Ҳ�����ˣ��������������ߴ��˿�����Ⱥ�������µģ������˳��ҿ�û����˵���ǵĹ��¡�ȥ�ɣ�������ħ������7ֻ���ǡ�</brief>
			<await>������ħ��������7ֻ���ǡ�</await>
			<finish>��������Ҫ����ʮ��������������ء�����Ҫ��ͷͨ���г𱨳�Ҫ�����鲻ʹ�죡</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5005" />
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
			<![CDATA[ͨ��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���>#����ľ����ٽ���#COLORCOLOR_GOLD#��ħ��#COLOREND#����ɱ7ֻ����#MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص����ǣ���#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="��ħ����" />
					<group_hunting keyname="����ħ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2250" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>