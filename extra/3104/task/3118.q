<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3118" name="[����]-Ѱ���ͷű��������ķ���" type="1" suggest_level="1" visible="1" next_id="3119">
		<description>
			ԭ������������Ϊ��Щ����ɽ��Ѩ����걻������ʬū�Ǳ��ˣ�����ԭ���������ǵĸ�����Ϊ�˰��������ǵĸ����ӱ�ū�۵����н��ѳ�����ȥ�Ҳر����ػ������ʣ���û���ͷ����ķ�����
		</description>
		<dialogue>
			<brief>������о���������Ϊ��ֻ�������ǲŻ�֪������Щ��걻������ʬū������ԭ�������ǵĸ������������������ܸ�������걻��ħū�۵����ˣ�
\n������һ��Ҫ������ǣ��ͷű�ǧ����ħū�۵����ɣ�
\n����ȥ���ʲر����ػ��ˣ����������Ĺ�͢��ʦ��ѧ����һ������֪���ͷ����ķ�����</brief>
			<await>��~~~~~~~</await>
			<finish>������ɽ��Ѩ�������������
			\n������ʵ�ϣ�����ɽ��Ѩ�����ܹ���֮���Ҿ��Ѿ���ʼ�о��ˣ��⻹Ҫ��Ҫлл��ķ��֣�ǧ����ħ������ʵ�ڷǳ��ɺޣ��Һã��Ҵ���ʦ���µıʼ����ҵ����Ƴ���������ķ�����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3117" />
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
			<![CDATA[ȥ���ǵĹ㳡��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#Ѱ���ͷű��������ķ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǵĹ㳡��#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���,MOVE:1>#Ѱ���ͷű��������ķ���]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
			<buffs>
				<buff keyname="��ʥ֮��"  manual_time="0" />
			</buffs>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>