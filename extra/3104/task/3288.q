<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3288" name="[����]-��ֵ�����(3)" type="1" suggest_level="1" visible="1" next_id="3289">
		<script name="3288" />
		<description>
			ǧ�������������Ĵ�ֻ�ں��г�û�����ԣ��������Ÿ��ָ�������Ʒ���������Ϊ��Ѱ��5�������չޣ����и�������Ʒ�ر���Ŷ��
		</description>
		<dialogue>
			<brief>ǧ�������������Ĵ�ֻ�ں��г�û�����ԣ��������Ÿ��ָ�������Ʒ���������Ϊ��Ѱ��5�������չޣ����и�������Ʒ�ر���Ŷ��</brief>
			<await>�㻹û���ռ����㹻�ĺ����չ�</await>
			<finish>�����ɫ�ı�ʯ���͸���ɣ��������˴Ӻ��й�������ϻ�õõ��ı�ʯ���㿴��������˾�Ө����������ܹ�������һ���������͸��İ����˶��������ջ�һ������İ���Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3287" />
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
			<![CDATA[�����������,�ռ�5��#LINK<MAP:����2,POSX:119,POSY:67,STR:�����չ�,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���ռ����ĺ����չ޽���#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�����չ�"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="530000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��ɫ��ʯ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>