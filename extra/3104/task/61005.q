<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="61005" name="[�ճ�]-����ɨ��" type="3" suggest_level="1" visible="1">
		<description>
			��Ȼ���ܻḶ����Ѫ�����������ǣ�Ϊ��׷��ǿ���������ÿ���Ҫ��ս���Ƿǳ���Ҫ�ġ�����ν�����첻���Ϸ����ߡ�����������Ҫ��ȥ��ѵһ����Щ�����ⱵĹ����ǣ�������֪�������ǲ�����ش�½�������ߡ�
		</description>
		<dialogue>
			<brief>��Ȼ���ܻḶ����Ѫ�����������ǣ�Ϊ��׷��ǿ���������ÿ���Ҫ��ս���Ƿǳ���Ҫ�ġ�����ν�����첻���Ϸ����ߡ�����������Ҫ��ȥ��ѵһ����Щ�����ⱵĹ����ǣ�������֪�������ǲ�����ش�½�������ߡ�</brief>
			<await>��~��~~��ã�������¹����ܣ����޵���ش�½���Ҽ�~~~</await>
			<finish>��ǿ��������Ȼ������ô��ʱ�䣬�����㻹���ٶ����������������������ң����Ǽ���</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="1"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="40" max_num="44" />
			<jobs>
				<job id="1" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥɨ��450ֻ40�����ϵĹ����ٻ������Ұ�#HUNTLEVEL0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<huntlevels>
				<huntlevel min_num="40"  max_num="300" n="450"/>
			</huntlevels>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="355000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>