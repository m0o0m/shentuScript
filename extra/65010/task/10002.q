<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10002" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�̻�һ��װ��" type="1" suggest_level="1" visible="1" next_id="91">
		<script name="����ִ�нű�" />
		<description>
			�̻��ǽ���������װ��֮�ϣ����Լ��������װ���ĸ������ԡ�˵���ٶ಻��ȥ��һ�Σ���һ��װ��ȥ����һ�°ɡ�
		</description>
		<dialogue>
			<brief>�̻��ǽ���������װ��֮�ϣ����Լ��������װ���ĸ������ԡ�˵���ٶ಻��ȥ��һ�Σ���һ��װ��ȥ����һ�°ɡ�</brief>
			<await>��ǿ�����棬���ɶ�ѡ�е�װ������ǿ����</await>
			<finish>�ţ������̻�������������������ָ��ֻ�ӹ�����������ǿ���������Ҫע��Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="90" />
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
			<![CDATA[#COLORCOLOR_BROWN#����򿪣�#COLOREND# #UILINK<STR:�̻����,WND:ִ�нű�,PARAM:TaskOpenForge(3)>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��ɽ������,MOVE:1>#]]>
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
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>