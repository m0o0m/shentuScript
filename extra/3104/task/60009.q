<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60009" name="[֧��]-����" type="2" suggest_level="1" visible="1">
		<description>
			Ҫ����ǿ�󣬲�����һ��һϦ���£�����Ҫ�м�ǿ����־���ڷܵ��ж�����һ�ֵ��츳���츳���˶��У��Ϳ�����˭�ܼ�ֵ�������ֻҪ��ÿ���ֽ�������������һ�죬����ܳ۳Ҵ�½�����������֮�䣬�ϻ���˵���������ھͿ�ʼ�����ɣ���ȥ������ɱ��100ֻ�������������ң����İɣ��һ������Ľ����ġ�
		</description>
		<dialogue>
			<brief>Ҫ����ǿ�󣬲�����һ��һϦ���£�����Ҫ�м�ǿ����־���ڷܵ��ж�����һ�ֵ��츳���츳���˶��У��Ϳ�����˭�ܼ�ֵ�������ֻҪ��ÿ���ֽ�������������һ�죬����ܳ۳Ҵ�½�����������֮�䣬�ϻ���˵���������ھͿ�ʼ�����ɣ���ȥ������ɱ��100ֻ�������������ң����İɣ��һ������Ľ����ġ�</brief>
			<await>100ֻ�����޶��㲻����������ǿ����</await>
			<finish>������Ȼ�㻨��ʱ�䲻�٣�������������ô�������ޣ�Ҳ�ܿ�������������ǳ���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ͨ��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#����#COLORCOLOR_YELLOW#������#COLOREND#����100ֻ#COLORCOLOR_YELLOW#������#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǹ㳡��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="����������" />
					<group_hunting keyname="�м�������" />
					<group_hunting keyname="�߼�������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
			<awards>
				<award keyname="����ƾ֤"  n="150" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>