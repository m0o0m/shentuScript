<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4019" name="[֧��]-�ؾ�����֮��(2)" type="2" suggest_level="1" visible="1" next_id="4020">
		<script name="4019" />
		<description>
			�𾴵�������ʿ�����ǿ���ܷ����һ��Сæ���³�֮���ҽ���������ı��ꡣ\n��������ʵ���ؾ����������ӣ�һֱ�ڸ�ĸ�Ĺذ��³��󣬿���ǰ���ã��Ҹ���ͻȻȥ����ĸ�װ��������֮ѳ�ᡣ����������֮���ҵĶ���ͻȻ���ѣ����Ҹ��׵�����ȫ��ɱ������Ҫɱ�ҡ���ƴ���ӳ�������Ҳ��������ˣ��������������һ·׷ɱ����������������Ҵ��Ÿ������壬�������ң��Ҷ����λ֮�󣬽�������ı��ꡣ\n�����ҵ�����һֱ�����ں����ؾ�������С�������������£���������¼��������ɱΣ�������Ҳ��֪������������ҵ��ż�ȥ������\n
		</description>
		<dialogue>
			<brief>�𾴵�������ʿ�����ǿ���ܷ����һ��Сæ���³�֮���ҽ���������ı��ꡣ\n��������ʵ���ؾ����������ӣ�һֱ�ڸ�ĸ�Ĺذ��³��󣬿���ǰ���ã��Ҹ���ͻȻȥ����ĸ�װ��������֮ѳ�ᡣ����������֮���ҵĶ���ͻȻ���ѣ����Ҹ��׵�����ȫ��ɱ������Ҫɱ�ҡ���ƴ���ӳ�������Ҳ��������ˣ��������������һ·׷ɱ����������������Ҵ��Ÿ������壬�������ң��Ҷ����λ֮�󣬽�������ı��ꡣ\n�����ҵ�����һֱ�����ں����ؾ�������С�������������£���������¼��������ɱΣ�������Ҳ��֪������������ҵ��ż�ȥ������\n</brief>
			<await>��ʿ������ҵ�ס׷�����������Ÿ�����ɡ�\n</await>
			<finish>ʲô�����д��£��콫���ø��ҿ�����\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4018" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="�������ӵ���"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[����#COLORCOLOR_GREENG#��������#COLOREND#������׷��#MONSTERGROUP0#�ͺ�������#MONSTERGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:66,POSY:96,STR:�ؾ���������,MOVE:1>#����#LINK<MAP:����3Ұ��,POSX:34,POSY:102,STR:�����ؾ�,MOVE:1>#���ҵ�#LINK<MAP:����3Ұ��,POSX:42,POSY:48,STR:��������ү,MOVE:1># ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="����׷��1" />
					<group_hunting keyname="����׷��2" />
				</group>
				<group n="1" >
					<group_hunting keyname="��������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="90000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>