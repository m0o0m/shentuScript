<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="72" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#װ����ǿ" type="1" suggest_level="1" visible="1" next_id="73">
		<script name="����ִ�нű�" />
		<description>
			���������ڵ�װ���Ѿ��޷��������Ҫ���ˣ�ÿһ��װ�����������Լ���Ǳ����ֻ��Ѱ������Զ���ᶮ����������һ�ѡ�
		</description>
		<dialogue>
			<brief>���������ڵ�װ���Ѿ��޷��������Ҫ���ˣ�ÿһ��װ�����������Լ���Ǳ����ֻ��Ѱ������Զ���ᶮ����������һ�ѡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��װ���������������������԰�����õ�ս����������ӹ���ɵ���ʵ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="71" />
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
			<![CDATA[�ظ� #NPCLINK<STR:����ʹ��,NPCKEYNAME:��ɽ�Ǹ���ʹ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����ʹ��,NPCKEYNAME:��ɽ�Ǹ���ʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="38" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>