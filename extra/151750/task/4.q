<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����֮��" type="1" suggest_level="1" visible="1" next_id="5">
		<script name="����ִ�нű�" />
		<description>
			��̬ƽ�ͣ��������꣬����ͷ�۹��ȻϬ����ʱ�����ˣ���ȥ�峤��������������ɣ�ָ��������ʲôѹ��׵ı����ء�˳��ȥ����3ֻ���ӣ���Ҫ��Ϊʲô���Ժ����֪���ˡ�
		</description>
		<dialogue>
			<brief>��̬ƽ�ͣ��������꣬����ͷ�۹��ȻϬ����ʱ�����ˣ���ȥ�峤��������������ɣ�ָ��������ʲôѹ��׵ı����ء�˳��ȥ����3ֻ���ӣ���Ҫ��Ϊʲô���Ժ����֪���ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������������ͻȻ���࣬�ƺ����½һ������������������Ī��Ĺ�ϵ�����а�������ʹ�ò����º͵�����Ҳ��ʼ�궯�������������Ǵ�Ҳ�޷����ⱻ�������У������ò������ô�����ڴ�½��ϣ����Ҫ��֮�����źá������ˣ���ĳɳ��ܿ죬�����ڵ������޷��������ˣ�������Ѱɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:45,POSY:173,STR:��Ƥ��># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ�#NPCLINK<STR:�峤,NPCKEYNAME:���ִ�峤>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="�๳è" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="4000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>