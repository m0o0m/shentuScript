<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="54" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����֮��" type="1" suggest_level="1" visible="1" next_id="55">
		<script name="����ִ�нű�" />
		<description>
			�����������Ǳ�����������ȷʵ��ȽϺ�г�ˡ�
		</description>
		<dialogue>
			<brief>�����������Ǳ�����������ȷʵ��ȽϺ�г�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Ի��裬��һ�����������Ĵ�½���Ȩ�����λ���������ܹ���Ϊ�������ˣ����ɾ͵��ڳư�����Ƭ��½����Ϊ��ǿ���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="53" />
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
			<![CDATA[�ظ� #NPCLINK<STR:�ᱦ���,NPCKEYNAME:���Ƕᱦ���,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�ᱦ���,NPCKEYNAME:���Ƕᱦ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>