<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="131" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#转生等级达到1级" type="1" suggest_level="1" visible="1" next_id="132">
		<script name="任务执行脚本" />
		<description>
			恭喜你，现在可以开始转生了，在你的角色界面中，可以开始转生了。转生消耗转生修为，转生修为可以通过降级或者使用转生丹来提升。
		</description>
		<dialogue>
			<brief>恭喜你，现在可以开始转生了，在你的角色界面中，可以开始转生了。转生消耗转生修为，转生修为可以通过降级或者使用转生丹来提升。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>恭喜你，达到转生等级1级。转生可以大幅度提升角色的属性。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="130" />
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
			<![CDATA[回复 #NPCLINK<STR:防具尊者,NPCKEYNAME:防具尊者,MOVE:1>#]]>
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
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>