<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4020" name="[֧��]-�ؾ�����֮��(3)" type="2" suggest_level="1" visible="1" next_id="4021">
		<description>
			�������Ǻú�Ϳ�����ɷ���˴�����У���Ҫ���ϵ�����������ǿ�����ֶ��һ��֮����\n�������࣬��л������Ǵ������������Ǻ���һ��Σ���ˣ����Ƕ���һֱ��ͳһ�����ؾ���Ȼ��ɱ��½�أ�ֻ���Ҵ��һֱ���ʣ��������ա����������λ�ɹ������������ؾ��ᱻ��Ū��һ���㣬������������Ҳ������ܺ���\n������ʿ���ɷ�����һ��֮�����ҽ��ʱ�ǣ�ƶ���ı��������������Ǳ����������֮������������\n
		</description>
		<dialogue>
			<brief>�������Ǻú�Ϳ�����ɷ���˴�����У���Ҫ���ϵ�����������ǿ�����ֶ��һ��֮����\n�������࣬��л������Ǵ������������Ǻ���һ��Σ���ˣ����Ƕ���һֱ��ͳһ�����ؾ���Ȼ��ɱ��½�أ�ֻ���Ҵ��һֱ���ʣ��������ա����������λ�ɹ������������ؾ��ᱻ��Ū��һ���㣬������������Ҳ������ܺ���\n������ʿ���ɷ�����һ��֮�����ҽ��ʱ�ǣ�ƶ���ı��������������Ǳ����������֮������������\n</brief>
			<await>�ҽ��ʱ�ǣ�ƶ���ı��������ȥ��������ɣ�\n</await>
			<finish>���������簡���磬һ��������������㾹�������³������������̾����\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4019" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="��������ү" item="��������ү��ͷ­" min_num="1" max_num="1" bind_require="1" limit="1" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:150,POSY:90,STR:�ؾ���������Ĵ���,MOVE:1>#������#LINK<MAP:����3����1,POSX:36,POSY:58,STR:��������ү,MOVE:1>##ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�#LINK<MAP:����3,POSX:86,POSY:77,STR:�����ؾ�,MOVE:1>#������#NPCLINK<STR:��������ү,NPCKEYNAME:��������ү,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��������ү��ͷ­"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="375000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
			<awards>
				<award keyname="1.5���������"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>