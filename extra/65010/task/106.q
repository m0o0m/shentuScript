<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="106" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#转生等级达到3级" type="1" suggest_level="1" visible="1" next_id="">
		<script name="任务执行脚本" />
		<description>
			转生等级达到3级。
		</description>
		<dialogue>
			<brief>转生等级达到3级。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>恭喜你，达到转生等级3级。转生可以大幅度提升角色的属性。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="93" />
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
			<![CDATA[#COLORCOLOR_GOLD#快速链接：#COLOREND# #UILINK<STR:进行转生,WND:执行脚本,PARAM:OpenRoleRein()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:药品尊者,NPCKEYNAME:巫山城药品尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>