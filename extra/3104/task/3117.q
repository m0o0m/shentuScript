<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3117" name="[����]-���˵�������" type="1" suggest_level="1" visible="1" next_id="3118">
		<description>
			�������������ǳ����˱��ˣ�ȥ����һ�����ǰɣ�������ʲô���԰������ǵġ�
		</description>
		<dialogue>
			<brief>�������������ǳ����˱��ˣ���ȥ����һ�����ǰɣ�������ʲô���԰������ǵġ�</brief>
			<await>��ô������Щ�����Ǻ�Щ����</await>
			<finish>���Ѿ���˵������¼���û���㣬���ǿ���Ҫ�ܾò��ܷ�����ɽ��Ѩ�����ܡ���������ɽ��Ѩ�����ܹ�֮���ڣ����ǵ�����ȴ�������޾��ı��ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3116" />
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
			<![CDATA[ȥ���ﰲ��һ��#NPCLINK<STR:���˵�����,NPCKEYNAME:���˵�����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ﰲ��һ��#NPCLINK<STR:���˵�����,NPCKEYNAME:���˵�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>