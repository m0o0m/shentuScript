<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="25" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ί������" type="1" suggest_level="1" visible="1" next_id="26">
		<script name="����ִ�нű�" />
		<description>
			�Թ�Ӣ�۳����꣬���ڿ����㽨����ҵ�ĺ�ʱ��Ŷ��������˵��Ŀǰ��������Ĳ�ֻһ�أ�ϣ������ǰȥ̽�飬�޶����������Ǻܸ�Ŷ���㲻������ʧ���ɣ�
		</description>
		<dialogue>
			<brief>�Թ�Ӣ�۳����꣬���ڿ����㽨����ҵ�ĺ�ʱ��Ŷ��������˵��Ŀǰ��������Ĳ�ֻһ�أ�ϣ������ǰȥ̽�飬�޶����������Ǻܸ�Ŷ���㲻������ʧ���ɣ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ϲ�������������������ܵõ�������ʶ����������Ǻ�����Ľ����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="24" />
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
			<![CDATA[�ظ� #NPCLINK<STR:�ʹ�����,NPCKEYNAME:��ɽ�ǻʹ�����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�ʹ�����,NPCKEYNAME:��ɽ�ǻʹ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>