<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="29" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�ڰ�����" type="1" suggest_level="1" visible="1" next_id="30">
		<script name="����ִ�нű�" />
		<description>
			��׼��������һ�ж������׵��ˡ��Ǳ�����ɣ�
		</description>
		<dialogue>
			<brief>��׼��������һ�ж������׵��ˡ��Ǳ�����ɣ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������˰��֣���Ҳ���Ի������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="28" />
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
			<![CDATA[�ظ� #NPCLINK<STR:���涴����,NPCKEYNAME:��򼶴����һ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:���涴����,NPCKEYNAME:��򼶴����һ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="500" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="4" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>