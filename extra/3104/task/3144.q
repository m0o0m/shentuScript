<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3144" name="[����]-������ʼ" type="1" suggest_level="1" visible="1" next_id="3145">
		<description>
			���ڣ���ʱ��ʼ�����ķ����ˣ��Ӹ�Դ��ȥ����������յİ취�����ǵ�һ��Ŀ�����а����Ȼ�ǵ��˵Ĵ�Ӫ������һ��������Σ�գ�����ȥа������10����ԭ��ʿ��10����ԭ��ʿ��10����ԭ��ʿ������һ���Լ��������ܷ�ʤ���������
		</description>
		<dialogue>
			<brief>���ڣ���ʱ��ʼ�����ķ����ˣ��Ӹ�Դ��ȥ����������յİ취�����ǵ�һ��Ŀ�����а����Ȼ�ǵ��˵Ĵ�Ӫ������һ��������Σ�գ�����ȥа������10����ԭ��ʿ��10����ԭ��ʿ��10����ԭ��ʿ������һ���Լ��������ܷ�ʤ���������</brief>
			<await>����30ֻ��ħ���㶼�޷���������</await>
			<finish>���ж���Ѹ�٣�ʵ��Ҳ�ǳ�ǿ��\n������а����Ȼ��ΪΣ�գ���Ϊа����а������ķ�Դ֮�ء��ܾ�֮ǰ��а�������������ش�½�������˺ڰ���Ԫʱ������������ҵĶ������������˵�һ����������а����������а��
			\n������������Ȼ������а���Ƶ��������ڻ���֮�ص����а��һֱ��ǿ�ش��������������Ҿۼ�����������ǿ��Ķ�ħ�Լ���������ࡣ���ԣ�����а������������뱣����Զ�ľ��裬ֱ����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3143" />
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
			<![CDATA[ȥ#COLORCOLOR_YELLOW#���а��#COLOREND#����    10ֻ#LINK<MAP:а��1,POSX:86,POSY:194,STR:��ԭ��ʿ,MOVE:1>##MONSTERGROUP0# 10ֻ#LINK<MAP:а��2,POSX:49,POSY:274,STR:��ԭ��ʿ,MOVE:1>##MONSTERGROUP2# 10ֻ#LINK<MAP:а��3,POSX:19,POSY:212,STR:��ԭ��ʿ,MOVE:1>##MONSTERGROUP1#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ�������ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Լ����������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="��Ӣ��ԭ��ʿ1" />
				</group>
				<group n="10" >
					<group_hunting keyname="��ԭ��ʿ1" />
					<group_hunting keyname="��ԭ��ʿ2" />
					<group_hunting keyname="��ԭ��ʿ3" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ2" />
					<group_hunting keyname="������ԭ��ʿ2" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="��Ӣ��ԭ��ʿ1" />
				</group>
				<group n="10" >
					<group_hunting keyname="��ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="������ԭ��ʿ1" />
					<group_hunting keyname="��Ӣ��ԭ��ʿ1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1200000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>