<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="19" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��֪ҩ����" type="1" suggest_level="1" visible="1" next_id="20">
		<script name="����ִ�нű�" />
		<description>
			Ҫ������������һ���ˣ���������֪������ƾһ��֮�����޷�������ƽϢ����������ǰȥ��֮ҩƷ���ߡ�Ҳ�þ�����Щ׼����
		</description>
		<dialogue>
			<brief>Ҫ������������һ���ˣ���������֪������ƾһ��֮�����޷�������ƽϢ����������ǰȥ��֮ҩƷ���ߡ�Ҳ�þ�����Щ׼����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>Ŷ������Ҫ����������֮�¾���������������ת�������Ϸ�֪���ˡ�лл���ˣ�С���ޡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="18" />
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
			<![CDATA[�ظ� #NPCLINK<STR:ҩ���ϰ�,NPCKEYNAME:��ɽ��ҩƷ����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:ҩƷ����,NPCKEYNAME:��ɽ��ҩƷ����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>