<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3111" name="[����]-�����ӵ����ѣ�����" type="1" suggest_level="1" visible="1" next_id="3112">
		<script name="3111" />
		<description>
			���ʲ����Ӹ�Ҫ������ȴ��ǰ��Ĵ�·�Ϸ�����һ��Ⱥ���ǵ��������˰ﵽ�ף����������ӽ���Ⱥ�����Ķ������
		</description>
		<dialogue>
			<brief>��ʿ���Եȣ��ոսӵ�����˵��ǰ��·�ϼ�����һ��Ⱥ���ǣ�����̫�࣬�����޷��ֵ������������ٴΰ�������</brief>
			<await>��ʿ������</await>
			<finish>��ʿ��Ȼ���£������¾Ͱ���Ⱥ���Ǵ��������ɢ�ˣ����С��˼����Ȼ���࣬���벻Ҫ�ܾ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3110" />
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
			<![CDATA[ȥǰ��ɱ��10ֻ������#COLORCOLOR_GREENG##LINK<MAP:����,POSX:259,POSY:709,STR:Ұ��,MOVE:1>##COLOREND##MONSTERGROUP0#���Դ˾�ɢ��Ⱥ]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ����#NPCLINK<STR:���Ǿ����,NPCKEYNAME:���Ǿ����,MOVE:1>#�谭�Ѿ����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="Ұ��" />
					<group_hunting keyname="����Ұ��" />
					<group_hunting keyname="��ӢҰ��" />
					<group_hunting keyname="����Ұ��" />
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