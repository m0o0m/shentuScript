<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3274" name="[����]-�ر����ػ��˵ıʼ�(1)" type="1" suggest_level="1" visible="1" next_id="3304">
		<script name="3274" />
		<description>
			�ҵıʼ����Ź�����ش�½���������ʷ��������ܰ���һ��æ���ҿ��Գ����ҵ��о��ʼǡ�\n�����ҵ�ѧ��Сʫ�º���ʧ���ˣ��ҷǳ����������ܽ������·��ֵĺ����ؾ�����Ը��������æ���㲻֪����ôȥ�����ؾ������ٳǵĺ�����·�˿��Դ��㣬��ȥ�����ɡ�
		</description>
		<dialogue>
			<brief>�ҵıʼ����Ź�����ش�½���������ʷ��������ܰ���һ��æ���ҿ��Գ����ҵ��о��ʼǡ�\n�����ҵ�ѧ��Сʫ�º���ʧ���ˣ��ҷǳ����������ܽ������·��ֵĺ����ؾ�����Ը��������æ���㲻֪����ôȥ�����ؾ������ٳǵĺ�����·�˿��Դ��㣬��ȥ�����ɡ�</brief>
			<await>��û���ҵ�������·����</await>
			<finish>���������ٳǲ��ã���ǰû�����ɣ��Ǻǣ��Ժ����ǻᾭ���򽻵�Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3273" />
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
			<![CDATA[ȥ���ٳ�Ѱ��#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#��ͨ�������Խ��뺣���ؾ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ٳ�Ѱ��#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#��ͨ�������Խ��뺣���ؾ���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>