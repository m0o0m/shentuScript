<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3207" name="[����]-�����ħʯ��(2)" type="1" suggest_level="1" visible="1" next_id="3208">
		<description>
			��ΪĳЩ�£����Ѿ�Ǳ���ڴ˺ܾ��ˡ����ʯ��֮�ڣ��ۼ��Ŵ���������һ����½�Ķ�ħ�������ҳ�����Ϊ��ħ������ʵ��ǿ�󣬼�ʹ�����ඥ����սʿ��Ҳ�������׵�սʤ���ǣ����������ڶ࣬��Ȼ���ٳ�������ش�½�����ǣ���ʹ������֮��Ҳ���Թ��ݡ��㽫����Ϣת�涫�ٳǰɡ�
		</description>
		<dialogue>
			<brief>��ΪĳЩ�£����Ѿ�Ǳ���ڴ˺ܾ��ˡ����ʯ��֮�ڣ��ۼ��Ŵ���������һ����½�Ķ�ħ�������ҳ�����Ϊ��ħ������ʵ��ǿ�󣬼�ʹ�����ඥ����սʿ��Ҳ�������׵�սʤ���ǣ����������ڶ࣬��Ȼ���ٳ�������ش�½�����ǣ���ʹ������֮��Ҳ���Թ��ݡ��㽫����Ϣ���߶��ٳǰɡ�</brief>
			<await>������Ϣת�涫�ٳ��ϱ���</await>
			<finish>����Ҫ����ͨ���ȥ�������̫�����ˣ���ؼ��ģ�лл�㣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3206" />
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
			<![CDATA[�Ҷ��ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�㱨���]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>