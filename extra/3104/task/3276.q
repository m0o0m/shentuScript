<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3276" name="[����]-�ر����ػ��˵ıʼ�(4)" type="1" suggest_level="1" visible="1" next_id="3277">
		<description>
			֪���ˣ�֪���ˣ��һᾡ���ȥ���������߰ɡ�˳����ҵ���ʦ˵��Ŷ��Сʫ�²Ų�����Ϊ���¶�����ȥѰ���Լ��ķ���Ŷ��
		</description>
		<dialogue>
			<brief>֪���ˣ�֪���ˣ��һᾡ���ȥ���������߰ɡ�˳����ҵ���ʦ˵��Ŷ��Сʫ�²Ų�����Ϊ���¶�����ȥѰ���Լ��ķ���Ŷ��</brief>
			<await>���ȥ���ҵ���ʦ˵����</await>
			<finish>��Ȼ���������ô��һ��æ����ô���ҵ��о��ʼǾ���ʱ�Ƚ����ɡ�һ��Ҫ�ǵû�Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3275" />
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
			<![CDATA[�ص����ǣ��ҵ�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#��������Сʫ�µ���Ϣ.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص����ǣ��ҵ�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#��������Сʫ�µ���Ϣ.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="320000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�þ������ߵıʼ�"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>