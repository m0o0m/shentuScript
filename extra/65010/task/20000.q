<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20000" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��ħ����" type="3" suggest_level="1" visible="1" next_id="">
		<description>
			��̬ƽ�ͣ��������꣬����ͷ�۹��ȻϬ����ʱ�����ˣ���ȥ�峤��������������ɣ�ָ��������ʲôѹ��׵ı����ء�˳��ȥ����3ֻ���ӣ���Ҫ��Ϊʲô���Ժ����֪���ˡ�
		</description>
		<dialogue>
			<brief>��̬ƽ�ͣ��������꣬����ͷ�۹��ȻϬ����ʱ�����ˣ���ȥ�峤��������������ɣ�ָ��������ʲôѹ��׵ı����ء�˳��ȥ����3ֻ���ӣ���Ҫ��Ϊʲô���Ժ����֪���ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������������ͻȻ���࣬�ƺ����½һ������������������Ī��Ĺ�ϵ�����а�������ʹ�ò����º͵�����Ҳ��ʼ�궯�������������Ǵ�Ҳ�޷����ⱻ�������У������ò������ô�����ڴ�½��ϣ����Ҫ��֮�����źá������ˣ���ĳɳ��ܿ죬�����ڵ������޷��������ˣ�������Ѱɣ�</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="9999999"  />
			<level enable="1" min_num="999" max_num="9999" />
			<prologues>
				<group>
					<prologue id="0" />
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
			<![CDATA[�ҷ�ħʹ�� #NPCLINK<STR:����������,NPCKEYNAME:��ɽ�Ƿ�ħʹ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ҷ�ħʹ�� #NPCLINK<STR:����������,NPCKEYNAME:��ɽ�Ƿ�ħʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
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