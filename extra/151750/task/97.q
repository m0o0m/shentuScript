<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="97" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#����֮��" type="1" suggest_level="1" visible="1" next_id="98">
		<script name="����ִ�нű�" />
		<description>
			��ʱ�������Լ�����һ�������ˣ�Ҫ�ڽ��������㣬���ǻ�����Ҫ��������ʵ����ǿ�������Լ�����һ�����ᣬ�����ʵ��������ǿ���Ǿ�ȥ����ǿ�ߵĹ��ᣬ�����Ժ�ķ�չ���кô���
		</description>
		<dialogue>
			<brief>��ʱ�������Լ�����һ�������ˣ�Ҫ�ڽ��������㣬���ǻ�����Ҫ��������ʵ����ǿ�������Լ�����һ�����ᣬ�����ʵ��������ǿ���Ǿ�ȥ����ǿ�ߵĹ��ᣬ�����Ժ�ķ�չ���кô���</brief>
			<await>��Ҫ���ᣬ�����ǿ��Ը����ģ��ȼ���һ������ȥ�ɡ�</await>
			<finish>��ϲ�㣡����һ����ʼ��Ҳ�������һ������㡣</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="96" />
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
			<![CDATA[����һ���л�򴴽�һ���л� #MONSTERGROUP0#
#COLORCOLOR_GOLD#���ٲ鿴��#COLOREND# #UILINK<STR:�л��б�,WND:ִ�нű�,PARAM:CLOnFamilyWindow()>#
��������#COLORCOLOR_MAGENTA#400����#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��ɽ������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>