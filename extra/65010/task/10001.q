<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10001" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����1��+6��װ��" type="1" suggest_level="1" visible="1" next_id="94">
		<script name="����ִ�нű�" />
		<description>
			��Ȼ��Σ�գ����Ǻ�ֵ���ٴ�һȥ��û����ħ����һ����Σ���ֺ�ֵ��һȥ�ĵط�����Ϊ����ĺö���ʵ��̫���ˡ�
		</description>
		<dialogue>
			<brief>ǿ�����Կ��������Լ���ʵ����˵�ٶ಻����ȥ��һ�ԣ�ȥ����һ��+6��װ��������</brief>
			<await>��ǿ�����棬���ɶ�ѡ�е�װ������ǿ����</await>
			<finish>�ţ�����ǿ��������������������ָ��ֻ�ӹ�����������ǿ���������Ҫע��Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="92" />
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
			<![CDATA[#COLORCOLOR_GOLD#������ɣ�#COLOREND# #UILINK<STR:�׳����,WND:ִ�нű�,PARAM:OpenFirstConsume()>#
#COLORCOLOR_BROWN#����򿪣�#COLOREND# #UILINK<STR:ǿ������,WND:ִ�нű�,PARAM:CL:OnOpenForge()>#
��������#COLORCOLOR_MAGENTA#400����#COLOREND# #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>