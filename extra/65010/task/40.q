<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="40" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ǰ��ʳ��ħ" type="1" suggest_level="1" visible="1" next_id="41">
		<script name="40q" />
		<description>
			�Ǿ���ȥ�ɡ�����һ���ȶ��涴����Ӧ���ĵط�����û�е�ʵ����ȥ��Ҳ��������һ·С�ģ����ǲ��У���Ҫçײ��������ɽ�ڲ���û���ա�
		</description>
		<dialogue>
			<brief>�Ǿ���ȥ�ɡ�����һ���ȶ��涴����Ӧ���ĵط�����û�е�ʵ����ȥ��Ҳ��������һ·С�ģ����ǲ��У���Ҫçײ��������ɽ�ڲ���û���ա�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>л��л�������ˣ����ǲ��챣�Ӱ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="39" />
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
			<![CDATA[�ظ� #NPCLINK<STR:ʳ��ħ����,NPCKEYNAME:ʳ��ħ����һ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:ʳ��ħ����,NPCKEYNAME:ʳ��ħ����һ��,MOVE:1>#]]>
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
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>