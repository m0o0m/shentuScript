<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="48" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��ħ����" type="1" suggest_level="1" visible="1" next_id="49">
		<script name="48_reward" />
		<description>
			��ħʹ���ƺ�һֱ�����㣬Ӧ����ʲô���飬��ȥ������һ�˰ɡ�
		</description>
		<dialogue>
			<brief>��ħʹ���ƺ�һֱ�����㣬Ӧ����ʲô���飬��ȥ������һ�˰ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������������˲����ˣ���ĳɳ����Һܾ���Ŷ����Ȼ����û�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="47" />
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
			<![CDATA[�ظ� #NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>