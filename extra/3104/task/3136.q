<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3136" name="[����]-������Σ��������" type="1" suggest_level="1" visible="1" next_id="3137">
		<script name="3136" />
		<description>
			�ڰ���Ԫ������������Ի͵�ʱ����������ӡ��̳������������֮�ڣ���ѹǿ��Ķ�ħ������û���κ����ѵĻ��ᡣ\n�������ǣ���ս�ٵ������ǣ��ػ��������������������������Ǳ���ÿʱÿ�̸����ע��һ�̶����ɷ��ɡ�
		\n��������ʱ������ƣ�����������ʿ����������ʹ�����������ˣ�����Ϊ�˵õ�Ѫ��ʦ��������͵͵Ǳ�����У����ħ�Թ��ģ�����а��\n�������ڱ�����������ˣ������������ɱ20����������࣬����һ�㶼�������㼰�����ĵط���
		</description>
		<dialogue>
			<brief>�ڰ���Ԫ������������Ի͵�ʱ����������ӡ��̳������������֮�ڣ���ѹǿ��Ķ�ħ������û���κ����ѵĻ��ᡣ\n�������ǣ���ս�ٵ������ǣ��ػ��������������������������Ǳ���ÿʱÿ�̸����ע��һ�̶����ɷ��ɡ�
			\n��������ʱ������ƣ�����������ʿ����������ʹ�����������ˣ�����Ϊ�˵õ�Ѫ��ʦ��������͵͵Ǳ�����У����ħ�Թ��ģ�����а��\n�������ڱ�����������ˣ������������ɱ20����������࣬����һ�㶼�������㼰�����ĵط���</brief>
			<await>�������������أ���ɱ��20��׹���������</await>
			<finish>�������ˣ������ⷬ�����ֶΣ�������������Ѫ��ʦ�Ķ��������Ȼ������٣���Ҳ�����ɿ����ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3135" />
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
			<![CDATA[����#LINK<MAP:�����5,POSX:162,POSY:28,STR:��������,MOVE:1>#��ɱ����20��#COLORCOLOR_YELLOW#���͡��Źֵ���...#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="�Źֵ���1" />
					<group_hunting keyname="����Źֵ���1" />
					<group_hunting keyname="�����Źֵ���1" />
					<group_hunting keyname="��Ӣ�Źֵ���1" />
					<group_hunting keyname="���浶��1" />
					<group_hunting keyname="������浶��1" />
					<group_hunting keyname="�������浶��1" />
					<group_hunting keyname="��Ӣ���浶��1" />
					<group_hunting keyname="˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="����˫��������1" />
					<group_hunting keyname="��Ӣ˫��������1" />
					<group_hunting keyname="��ū1" />
					<group_hunting keyname="��ū2" />
					<group_hunting keyname="���⵶ū1" />
					<group_hunting keyname="���⵶ū2" />
					<group_hunting keyname="������ū1" />
					<group_hunting keyname="��Ӣ��ū1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>