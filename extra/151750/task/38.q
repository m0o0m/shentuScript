<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="38" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#������ħ" type="1" suggest_level="1" visible="1" next_id="39">
		<script name="48_reward" />
		<description>
			��Ҫ�ư�һ��������ԶԶ����Ŷ���ҿ��԰������������������кܶ಻ͬ�Ѷȵ����񣬵�Ȼ�ѵ�Խ�󣬻�õĽ���ҲԽ�ߡ����������԰ɡ�
		</description>
		<dialogue>
			<brief>��Ҫ�ư�һ��������ԶԶ����Ŷ���ҿ��԰������������������кܶ಻ͬ�Ѷȵ����񣬵�Ȼ�ѵ�Խ�󣬻�õĽ���ҲԽ�ߡ����������԰ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������һ�ΰɣ�����������Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="37" />
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
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>