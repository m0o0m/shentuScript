<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="95" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#�ƺŵ�����" type="1" suggest_level="1" visible="1" next_id="96">
		<script name="����ִ�нű�" />
		<description>
			�ƺſ��Լ���������ɫ�ۺ�ʵ�������Ҿ����������ܣ���Ҫ���Ĺ�ѫֵ����ѫֵ����ͨ����ɳ�ħ������������
		</description>
		<dialogue>
			<brief>�ƺſ��Լ���������ɫ�ۺ�ʵ�������Ҿ����������ܣ���Ҫ���Ĺ�ѫֵ����ѫֵ����ͨ����ɳ�ħ������������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Ҫ�������������۴�BOSS���Ǵ�ܶ��ǳ����á�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="94" />
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
			<![CDATA[��ȡ��ѫֵ��#NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>