<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="71" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�ش��鱨" type="1" suggest_level="1" visible="1" next_id="72">
		<script name="71q" />
		<description>
			�������ǲ��ʺ�ȥ����Ľ����������ͻ������֮��Ӧ�ð�����Ϣ������ɽ�ǡ����¾��鷳���ˡ�
		</description>
		<dialogue>
			<brief>�������ǲ��ʺ�ȥ����Ľ����������ͻ������֮��Ӧ�ð�����Ϣ������ɽ�ǡ����¾��鷳���ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�����ˣ���л���������Ҫ���鱨�����������һᾡ��֪ͨ��ҵġ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="70" />
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
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
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
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="1" />
		</auto>
	</quest>
</quests>