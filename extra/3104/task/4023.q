<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4023" name="[֧��]-�غ���ӡ" type="2" suggest_level="1" visible="1">
		<script name="4023" />
		<description>
			�����ؾ��Ĺ������������׼�����Ʒ�ӡ��������ش�½�Ĺ����ǵ�֪����Ϣ�������ɳ���ǲ���Ӱ��������ؾ�����ħ�����ӡ������Ҫ�����̽����غ���ӡ֮�أ��鿴��ӡ�Ƿ񻹽�ȫ�����ʱ���㹻���뽨����һ�����ߣ���ֹ������Ʒ�ӡ,���ų����ӡ�Ĺ���Я���Ŵ������鱦�飬�����ȡ�����鱦����Լ�ʵ���������кܴ�İ������ɹ���ס����ĳ�����ػ��߻�������غ���ӡ֮�أ���ʱ����������Ҹ���Ľ���
		</description>
		<dialogue>
			<brief>�����ؾ��Ĺ������������׼�����Ʒ�ӡ��������ش�½�Ĺ����ǵ�֪����Ϣ�������ɳ���ǲ���Ӱ��������ؾ�����ħ�����ӡ������Ҫ�����̽����غ���ӡ֮�أ��鿴��ӡ�Ƿ񻹽�ȫ�����ʱ���㹻���뽨����һ�����ߣ���ֹ������Ʒ�ӡ��</brief>
			<await>����Ҵ������غ���ӡ</await>
			<finish>��ӡ�����𣬺�~~���������ܰ����ˣ��ǳ���л��İ������Ժ���ÿ�춼���Ե�������������һ���غ���ӡ֮�أ�����ֹ������Ʒ�ӡ��ͬʱ��Ҳ��ʹ����ٳɳ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="20" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ͨ��#NPCLINK<STR:�ؾ��ػ���,NPCKEYNAME:�ؾ��ػ�������,MOVE:1>#�����غ���ӡ�鿴��ӡ��ʯ�Ƿ�ȫ]]>
			</progressing>
			<accomplishing>
			<![CDATA[���Խ�����һ��������ֹ���������ʯ����˵������Ե���������鵤���ɹ���ֹ��������غ���ӡ֮������#NPCLINK<STR:�ؾ��ػ���,NPCKEYNAME:�ؾ��ػ��߳���,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>