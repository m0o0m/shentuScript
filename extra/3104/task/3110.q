<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3110" name="[����]-�����ӵ����ѣ�һ��" type="1" suggest_level="1" visible="1" next_id="3111">
		<description>
			����ɽ���������ǵľ����ھ�·���������˶�ħ��Ϯ������������ǲ�����ν����·��Ҳ�������ţ��Լ��Ը����ǰ����·�Ƚ����ħ
		</description>
		<dialogue>
			<brief>�����Ѿ�������·��̽�����ǣ������ӻ����������ֵܣ�����˵���ھ�·�������˶�ħ��Ϯ���Ͷ����ˣ������Ⱥ�Ҳ��ǲ�˼�֧��������·�ȣ���������ȴ��û��һ���˻������������֪����ô���ء�\n������ʿ���������Ȳ�����һ���з��˵ı��£���Ը��������ǣ�����Щ��ħ��˵���</brief>
			<await>\n������ʿ����ħ�����������</await>
			<finish>ԭ��������׼���ڰ�·�϶Ͼ����ǵ���Դ���������������ļ�ʱ������˶�ħ�ȷ�֮�������Ѿ����յ���ɽ�����͹����������ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3109" />
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
			<![CDATA[ȥ#COLORCOLOR_YELLOW#��·��#COLOREND#ɱ��10ֻϮ�������ӵ�#LINK<MAP:��·��,POSX:129,POSY:93,STR:��ħ�ȷ�,MOVE:1>##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[������ȥ����#NPCLINK<STR:���Ǿ����,NPCKEYNAME:���Ǿ����,MOVE:1>#��ħ�Ѿ��������ɽ�ǵĲ���������ͨ�����ǵ�·��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ħ�ȷ�1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>