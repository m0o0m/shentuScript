<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="916" name="#COLORCOLOR_YELLOW#[���顢��ѫ] #COLORCOLOR_ORANGE#��ѫ��ħ" type="2" suggest_level="1" visible="1">
		<script name="��ħ����" />
		<description>
			��������Ҫ�����Լ�����أ���Ҫѭ�򽥽������ɲ�֮��������������ȱ����һ�ѳ��ֵı�����ȥ��������ʦ���������в��ٵĺö�����������ȥ������֮ǰΪ��֤�����Լ���ʵ������ȥ����1ֻ����
		</description>
		<dialogue>
			<brief>��������Ҫ�����Լ�����أ���Ҫѭ�򽥽������ɲ�֮��������������ȱ����һ�ѳ��ֵı�����ȥ��������ʦ���������в��ٵĺö�����������ȥ������֮ǰΪ��֤�����Լ���ʵ������ȥ����1ֻ����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ʲô��������ͷ���������ҵģ�����ͷ�۹��������������������ϵ��˶������ڲ�֮ͬ�������Űɣ��������ʺ�Ŀǰ��׶ε���������ҪС������������������˫�н�����Ҫ��ȫ��Ԧ���ס�</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999999"  />
			<level enable="1" min_num="500" max_num="500" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#LINK<MAP:��һ��,POSX:40,POSY:104,STR:��ɱʳ�˶�Ѩ�������,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="ʳ������" />
					<group_hunting keyname="ʳ�˶�ħ" />
					<group_hunting keyname="ʳ��Ы��" />
					<group_hunting keyname="ʳ�˶���" />
					<group_hunting keyname="��ɫ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>