<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3284" name="[����]-Σ�յ����(1)" type="1" suggest_level="1" visible="1" next_id="3285">
		<description>
			���Ƿ��������Ϸ������ڲ�̽�����ĳ���֮��,��ǰ����һ�Һܿ��ܱ�������һֱ��Ѱ�ҵ�,����������ͼ��Ƭ����һ��,����,�����������ײеĺ��׹�������ǻ��������ǵĽ���������������Ҫ������鱨��Ϊ����̽�����ʵ������������һ����㣬ÿ�ֹ������ɱ10ֻ�ɡ�
		</description>
		<dialogue>
			<brief>���Ƿ��������Ϸ������ڲ�̽�����ĳ���֮��,��ǰ����һ�Һܿ��ܱ�������һֱ��Ѱ�ҵ�,����������ͼ��Ƭ����һ��,����,�����������ײеĺ��׹�������ǻ��������ǵĽ���������������Ҫ������鱨��Ϊ����̽�����ʵ������������һ����㣬ÿ�ֹ������ɱ10ֻ�ɡ�</brief>
			<await>��û�����庣�׹����ʵ��������</await>
			<finish>������鱨�����Ǽ�Ϊ��Ҫ��лл��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3283" />
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
			<![CDATA[�������һ����,��ɱ10ֻ#LINK<MAP:����1,POSX:83,POSY:137,STR:ʯ����,MOVE:1>##MONSTERGROUP0#��10ֻ#LINK<MAP:����1,POSX:79,POSY:137,STR:������,MOVE:1>##MONSTERGROUP1#��10ֻ#LINK<MAP:����1,POSX:73,POSY:139,STR:������,MOVE:1>##MONSTERGROUP2#��10ֻ#LINK<MAP:����2,POSX:114,POSY:89,STR:��ǯз,MOVE:1>##MONSTERGROUP3#��ر�Զ����ͳ��.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڣ������׹����ʵ������#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="ʯ����1" />
				</group>
				<group n="10" >
					<group_hunting keyname="������1" />
				</group>
				<group n="10" >
					<group_hunting keyname="������1" />
				</group>
				<group n="10" >
					<group_hunting keyname="��ǯз1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>