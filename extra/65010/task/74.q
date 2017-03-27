<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="74" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#  神翼的成长" type="1" suggest_level="1" visible="1" next_id="92">
		<script name="任务执行脚本" />
		<description>
			不要小看了你背后的那个小东西，现在它的确不是很起眼，若等它成型，恐怕所有怪物都将拜倒在你的羽翼之下。试试去培养它吧。
		</description>
		<dialogue>
			<brief>不要小看了你背后的那个小东西，现在它的确不是很起眼，若等它成型，恐怕所有怪物都将拜倒在你的羽翼之下。试试去培养它吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>几百年前，那时的神歌城主的一对神翼出世，天荒教主和邪皇至此像是消失在这个大陆之中，传言畏惧那神力而躲了起来，那是何等的威仪啊！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="73" />
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
			<![CDATA[#COLORCOLOR_BROWN#将翅膀提升至#COLOREND# #COLORCOLOR_GOLD#一阶#COLOREND#
点击打开： #UILINK<STR:翅膀界面,WND:执行脚本,PARAM:CLOnOpenWing()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="9999999" />
		</auto>
	</quest>
</quests>