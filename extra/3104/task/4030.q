<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4030" name="[֧��]-�ر���֮�䱦����Σ�գ���" type="2" suggest_level="1" visible="1">
		<description>
			���˽��䱦�������ܣ������û��ѡ����Ϊ��������Եõ����־���װ���ı��������Ԫ�顢������֮�࣡��ô�����ǲ��Ǿ����е��Ȳ��������Ǻǣ���ѽ���������֤������ʵ����ս�䱦�������Ļ������кô�����Ŷ��
		</description>
		<dialogue>
			<brief>���˽��䱦�������ܣ������û��ѡ����Ϊ��������Եõ����־���װ���ı��������Ԫ�顢������֮�࣡��ô�����ǲ��Ǿ����е��Ȳ��������Ǻǣ���ѽ���������֤������ʵ����ս�䱦�������Ļ������кô�����Ŷ��</brief>
			<await>��ȥ�ɣ�����ˣ�ʱ��ܱ���</await>
			<finish>С����ʵ����ǿѽ��������϶��ջ񲻴�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="30" max_num="200" />
			<prologues>
				<group>
					<prologue id="3155" />
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
			<![CDATA[�����䱦������ɱ1��#LINK<MAP:�䱦��,POSX:41,POSY:85,STR:�䱦������>##MONSTERGROUP0#��ע�⣺����Σ�գ�������ӣ����������ü���#COLORCOLOR_GOLD#��̽�����ս��#COLOREND#��#COLORCOLOR_GOLD#�������⣨����#COLOREND#��#COLORCOLOR_GOLD#�ƶ��䣨����#COLOREND#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�ľ�����#NPCLINK<STR:ľ���ﴫ����,NPCKEYNAME:ľ���ﴫ����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="�䱦������1" />
					<group_hunting keyname="�䱦������2" />
					<group_hunting keyname="�䱦������3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="125000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>