<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3281" name="[����]-���߲�ε�����(2)" type="1" suggest_level="1" visible="1" next_id="3282">
		<description>
			�����ҵ��о���������ø��߲�ε��������ؼ���������ͼ����Ƭ��\n��������ʷ�ϵ�ĳ��ʱ�䣬���������ǿ�ߴ�����λ��������ش�½����һЩ��λ��ǿ�߼���а�����ձ����ǻ��ɱ���²���ڶ����ǵ���Ѷ������֪��������������ش�½������Ϊ�˵õ�������ͼ����Ƭ��������˵��������Դ�������ͼ����Ƭ������������ת�����ܣ����Ի�ó�Ϊ�����������\n������Ը��ȥ������
		</description>
		<dialogue>
			<brief>�����ҵ��о���������ø��߲�ε��������ؼ���������ͼ����Ƭ��\n��������ʷ�ϵ�ĳ��ʱ�䣬���������ǿ�ߴ�����λ��������ش�½����һЩ��λ��ǿ�߼���а�����ձ����ǻ��ɱ���²���ڶ����ǵ���Ѷ������֪��������������ش�½������Ϊ�˵õ�������ͼ����Ƭ��������˵��������Դ�������ͼ����Ƭ������������ת�����ܣ����Ի�ó�Ϊ�����������\n������Ը��ȥ������</brief>
			<await>^</await>
			<finish>��Ȼ��Ը�⣬�Ҿ͸��������İɡ���������ͼԭ���ػ�������ش�½��λ����������ȴ��Ϊ�Կ�������ļ�������ը��Ϊ��Ƭ������������ͼ��Ϊ��Ƭ����ÿһ����Ƭ��Ȼӵ�зǷ���������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3280" />
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
			<![CDATA[������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="380000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>