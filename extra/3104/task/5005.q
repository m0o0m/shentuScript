<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5005" name="[����]-ѩ�����ǵĴ�˵��5��" type="2" suggest_level="1" visible="1" next_id="5006">
		<description>
			���࣬���Ǻ��˰������㻹�ܰ���һ��æ����һֱ��Ѱ���ҵĸ��ף����ǣ�����ɭ�ֺܴ󣬵����߱������еĽ��䶼û���ҵ��Ҹ��׵��ټ���\n�������룬����Ҳ����ʺϴ����Ҹ��׵���Ϣ����Ϊ�ҵĸ��װ��ǣ���һֻʵ��ǿ������ޡ������ż��Ź㲩������϶������Ҹ��׵����֡�
		</description>
		<dialogue>
			<brief>���࣬���Ǻ��˰������㻹�ܰ���һ��æ����һֱ��Ѱ���ҵĸ��ף����ǣ�����ɭ�ֺܴ󣬵����߱������еĽ��䶼û���ҵ��Ҹ��׵��ټ���\n�������룬����Ҳ����ʺϴ����Ҹ��׵���Ϣ����Ϊ�ҵĸ��װ��ǣ���һֻʵ��ǿ������ޡ������ż��Ź㲩������϶������Ҹ��׵����֡�</brief>
			<await>�ϱ�����ʶ�㣬ȥ����������Ϣ��</await>
			<finish>���ǣ������廳��������ȷʵ��һֻʵ��ǿ������ޣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5004" />
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
			<![CDATA[һ���㼣�����£�ս��������#NPCLINK<STR:�����ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#������֪�����ǵ��㼣]]>
			</progressing>
			<accomplishing>
			<![CDATA[һ���㼣�����£�ս��������#NPCLINK<STR:�����ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#������֪�����ǵ��㼣]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="47000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>