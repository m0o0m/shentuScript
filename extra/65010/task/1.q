<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��������" type="1" suggest_level="1" visible="1" next_id="2">
		<script name="����ִ�нű�" />
		<description>
			��������Ҫ�����Լ�����أ���Ҫѭ�򽥽������ɲ�֮��������������ȱ����һ�ѳ��ֵı�����ȥ��������ʦ���������в��ٵĺö�����������ȥ������֮ǰΪ��֤�����Լ���ʵ������ȥ����1ֻ����
		</description>
		<dialogue>
			<brief>��������Ҫ�����Լ�����أ���Ҫѭ�򽥽������ɲ�֮��������������ȱ����һ�ѳ��ֵı�����ȥ��������ʦ���������в��ٵĺö�����������ȥ������֮ǰΪ��֤�����Լ���ʵ������ȥ����1ֻ����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ʲô��������ͷ���������ҵģ�����ͷ�۹��������������������ϵ��˶������ڲ�֮ͬ�������Űɣ��������ʺ�Ŀǰ��׶ε���������ҪС������������������˫�н�����Ҫ��ȫ��Ԧ���ס�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:77,POSY:256,STR:��># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:������ʦ,NPCKEYNAME:���ִ�������ʦ>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>