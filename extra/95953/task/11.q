<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="11" name="��������-����ҵĻ���" type="1" suggest_level="1" visible="1" next_id="12">
		<description>
			�������㣬��ϲ���ӣ�ˮ�����⡭����.��ѽ,��ô����,�ۼ��洫����ɳ������˵������ɱ
��ȡ�����н����ģ���֪����ô������
		</description>
		<dialogue>
			<brief>�������㣬��ϲ���ӣ�ˮ�����⡭������ѽ,��ô����,�ۼ��洫����ɳ������˵������ɱ��ȡ�����н����ģ���֪����ô������</brief>
			<await>�������㣬��ϲ���ӣ�ˮ�����⡭������ѽ,��ô����,�ۼ��洫����ɳ������˵������ɱ��ȡ�����н����ģ���֪����ô������</await>
			<finish>�Ѽ�ɱ��֮�󣬰�ס��ALT+���������Ϳ��������ˣ���ֹ�����ܶද���ʬ��ɶ������ڵģ������������ң��ҵĳ��Ǿ��ԵĹ�ƽ��ǮҲ��������ġ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="10" />
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
			<![CDATA[ ɱ��#LINK<MAP:����,POSX:299,POSY:208,STR:��>##MONSTERGROUP0#
  (������Զ�Ѱ·)
  (��ӿ�����Ч��)
  #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[  ǰ��-#NPCLINK<STR:����,NPCKEYNAME:��������>#
  (������Զ�Ѱ·)
  #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>