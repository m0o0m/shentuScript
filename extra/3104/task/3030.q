<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3030" name="[����]-װ����ǿ��" type="1" suggest_level="1" visible="1" next_id="3031">
		<script name="3030" />
		<description>
			�����˲�Ҫ�����ߣ��Ǻǣ���Ҫ��Ϊ����ôС��Ŷ��ֻ�Ǹ��㿪����Ц������뾡������ʵ��������Ҫ�˽�һЩװ������ǿ�����鱨����Ը��������ͷ�ӵ���߶��
		</description>
		<dialogue>
			<brief>�����˲�Ҫ�����ߣ��Ǻǣ���Ҫ��Ϊ����ôС��Ŷ��ֻ�Ǹ��㿪����Ц������뾡������ʵ��������Ҫ�˽�һЩװ������ǿ�����鱨����Ը��������ͷ�ӵ���߶��</brief>
			<await>������װ����ʦ�Ի���</await>
			<finish>װ����������ʵ�ǿ��Լ��������ģ�����Ҫһ����Ԫ��Ĳ��ϡ�\n����������з�ӡ�������������Խ⿪װ���ķ�ӡ����Ҳ��һ������װ�����Եķ���Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3028" />
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
			<![CDATA[��#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:װ����ʦ,NPCKEYNAME:װ����ʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="28800" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>