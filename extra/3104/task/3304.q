<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3304" name="[����]-�ر����ػ��˵ıʼ�(2)" type="1" suggest_level="1" visible="1" next_id="3275">
		<script name="3304" />
		<description>
			�����ؾ����ں��׷��ֵ�һ�����ܿռ䣬��������Ŀǰ��֪���ײеĹ��û��ʵ���ɲ�Ҫ���׽���ð��Ŷ�������������ţ���ô��ͨ���ҾͿ��Դ��ͽ��뺣���ؾ��ˡ�\n������ȷʵ����Сʫ�£��ǵģ����Ѿ������˺����ؾ�֮�С���Ҫ�����һ������ǸϽ�ȥ�ɣ�
		</description>
		<dialogue>
			<brief>�����ؾ����ں��׷��ֵ�һ�����ܿռ䣬��������Ŀǰ��֪���ײеĹ��û��ʵ���ɲ�Ҫ���׽���ð��Ŷ�������������ţ���ô��ͨ���ҾͿ��Դ��ͽ��뺣���ؾ��ˡ�\n������ȷʵ����Сʫ�£��ǵģ����Ѿ������˺����ؾ�֮�С���Ҫ�����һ������ǸϽ�ȥ�ɣ�</brief>
			<await>��û���ҵ�Сʫ����</await>
			<finish>�ߣ�Ϲ˵��˭˵�����鷳�ˣ���ֻ�ǡ���\n�����������Ȼ�����Ը���ṩ�������Ҿ���ǿ�����ˡ��ɲ�������ҪŶ��ֻ�ǲ������������һ�˶��ѡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3274" />
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
			<![CDATA[���뺣���ؾ���Ѱ�������鷳��#NPCLINK<STR:Сʫ��,NPCKEYNAME:Сʫ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[���뺣���ؾ���Ѱ�������鷳��#NPCLINK<STR:Сʫ��,NPCKEYNAME:Сʫ��,MOVE:1>#]]>
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