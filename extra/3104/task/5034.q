<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5034" name="[֧��]-��·������������4��" type="2" suggest_level="1" visible="1">
		<description>
			��ʿ������Ҫ���������Ƿ����������ӰǱ���˾�·�ǣ���һ·׷�ٶ������������Ǵ��Ŵ�磬����Ͷ��а��Ķ����ߣ����������Ѿ������˾�·������������Ǳ����ôԶ�ľ�����������϶�û�к��£�һ��Ҫ�������ǣ���ҡ���ж�ɱ���ǵ���ı��
		</description>
		<dialogue>
			<brief>��ʿ������Ҫ���������Ƿ����������ӰǱ���˾�·�ǣ���һ·׷�ٶ������������Ǵ��Ŵ�磬����Ͷ��а��Ķ����ߣ����������Ѿ������˾�·������������Ǳ����ôԶ�ľ�����������϶�û�к��£�һ��Ҫ�������ǣ���ҡ���ж�ɱ���ǵ���ı��</brief>
			<await>�����·����������ɱ����Ǳ���а����ʹ����ʹ������</await>
			<finish>ԭ��а����������ţħ���������ǿ϶�����ı���Һ����ǵ���ʹ�Ѿ�����ʿ������\n��������а����ʲô���ǵõ������������߼����������˽⡣�����ˣ����ڴ���ĳɳ�����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5033" />
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
			<![CDATA[�����·����������ɱ#LINK<MAP:��·��3,POSX:290,POSY:190,STR:а����ʹ>##MONSTERGROUP0#��#LINK<MAP:��·��3,POSX:290,POSY:190,STR:��ʹ����>##MONSTERGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�س���#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="а����ʹ" />
				</group>
				<group n="4" >
					<group_hunting keyname="��ʹ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>