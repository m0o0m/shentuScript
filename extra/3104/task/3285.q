<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3285" name="[����]-Σ�յ����(2)" type="1" suggest_level="1" visible="1" next_id="3303">
		<description>
			���κ�һ��ս���У����ε����ض��Ǽ�Ϊ��Ҫ�ġ����ǶԳ����Ĳ��ֺͽṹȱ���㹻���˽⣬������Ƿǳ�������\n����������֪����һ�Ҵ��ڶ������Լ��Ľṹͼ���������������Ű����ЩͼֽӦ���������˹�������ϣ���������һ���㣬�ӹ���������ҵ��޴��Ľṹͼ�ɡ�
		</description>
		<dialogue>
			<brief>���κ�һ��ս���У����ε����ض��Ǽ�Ϊ��Ҫ�ġ����ǶԳ����Ĳ��ֺͽṹȱ���㹻���˽⣬������Ƿǳ�������\n����������֪����һ�Ҵ��ڶ������Լ��Ľṹͼ���������������Ű����ЩͼֽӦ���������˹�������ϣ���������һ���㣬�ӹ���������ҵ��޴��Ľṹͼ�ɡ�</brief>
			<await>��û���ҵ��޴��Ľṹͼ��?</await>
			<finish>������ݽṹͼ�����ǵ��ж�����������ԡ�лл��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3284" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="ʯ����1" item="�޴��Ľṹͼ" min_num="1" max_num="1" bind_require="1" limit="1" chance="300" />
				<trophy monster="������1" item="�޴��Ľṹͼ" min_num="1" max_num="1" bind_require="1" limit="1" chance="400" />
				<trophy monster="������1" item="�޴��Ľṹͼ" min_num="1" max_num="1" bind_require="1" limit="1" chance="500" />
				<trophy monster="��ǯз1" item="�޴��Ľṹͼ" min_num="1" max_num="1" bind_require="1" limit="1" chance="600" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�������һ����,�ӹ������ϻ��#LINK<MAP:����1,POSX:79,POSY:135,STR:�޴��Ľṹͼ,MOVE:1>##ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڣ����޴��Ľṹͼ����#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�޴��Ľṹͼ"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1020000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�м�ת��ʯ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>