<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3020" name="[����]-�˽⼼��(2)" type="1" suggest_level="1" visible="1" next_id="3021">
		<script name="3020" />
		<description>
			����һ���ܲ��ҵ����飡�������ֻ��һЩ�ͼ����м��ļ����顣��Ҫ�õ����߼������صļ��ܣ�ֻ�ܴӹ���ĳ�Ѩ�У���һЩ�ż���ȥѰ���ˡ�\n����Ϊ����������ո��ˣ���Ը��е�Ѱ�Ҹ߼����ܴ��е�ʹ���𣿵�Ȼ��������ʵ��̫����ֻ�轫��ʹ���������Ｔ�ɡ�
		</description>
		<dialogue>
			<brief>����һ���ܲ��ҵ����飡�������ֻ��һЩ�ͼ����м��ļ����顣��Ҫ�õ����߼������صļ��ܣ�ֻ�ܴӹ���ĳ�Ѩ�У���һЩ�ż���ȥѰ���ˡ�\n����Ϊ����������ո��ˣ���Ը��е�Ѱ�Ҹ߼����ܴ��е�ʹ���𣿵�Ȼ��������ʵ��̫����ֻ�轫��ʹ���������Ｔ�ɡ�</brief>
			<await>~~</await>
			<finish>�ܲ�������꣡�������̵�����û������ѧϰ�ļ��ܰɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3018" />
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
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4700" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>