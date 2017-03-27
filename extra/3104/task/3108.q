<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3108" name="[主线]-达到26级" type="1" suggest_level="1" visible="1" next_id="3109">
		<script name="3108" />
		<description>
			更广阔的世界需要更强大的实力，等你提升到26后去找找天机老人吧，他有更多的任务交给你。
		</description>
		<dialogue>
			<brief>恩，目前为止你实力提升很快呀，不过，更广阔的世界需要更强大的实力，等你提升到26后去找找天机老人吧，他有更多的任务交给你。</brief>
			<await>你现在实力还太弱了，等到26级再来吧！你可以多去封魔阵和试炼场锻炼实力哈！</await>
			<finish>恩，刚好你来了，我手上有个大麻烦，你帮我去看看吧</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3107" />
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
			<![CDATA[达到#COLORCOLOR_YELLOW#26级#COLOREND#后去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#26级#COLOREND#了，快去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#吧，他显的很焦急，应该是有什么事情找你]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="26" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>