<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3107" name="[主线]-杂货商的请求" type="1" suggest_level="1" visible="1" next_id="3108">
		<script name="3107" />
		<description>
			城外的天狼蜘蛛正在快速繁殖，这一定是被恶魔的邪气侵蚀的缘故，本来这些小东西不算什么，但是被侵蚀后的它们，拥有更强烈的毒性，如果不小心被他们咬伤，会非常的麻烦。可惜我实力不足，无法获得天狼蜘蛛的毒液，你能出城消灭10只天狼蜘蛛控制一下它们的数量，并给我带回3份毒液吗？
		</description>
		<dialogue>
			<brief>城外的天狼蜘蛛正在快速繁殖，这一定是被恶魔的邪气侵蚀的缘故，本来这些小东西不算什么，但是被侵蚀后的它们，拥有更强烈的毒性，如果不小心被他们咬伤，会非常的麻烦。可惜我实力不足，无法获得天狼蜘蛛的毒液，你能出城消灭10只天狼蜘蛛控制一下它们的数量，并给我带回3份毒液吗？</brief>
			<await>你杀了10只天狼蜘蛛吗？3份毒液找齐了吗？</await>
			<finish>这批毒液的品质非常的不错，呵呵，谢谢你，既消灭了危险，又给我带了这莫大的好处，小小礼品，不成敬意。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3106" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="天狼蜘蛛" item="毒液" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="超级天狼蜘蛛" item="毒液" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="挖肉天狼蜘蛛" item="毒液" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="精英天狼蜘蛛" item="毒液" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去龙城外杀死10只#LINK<MAP:龙城,POSX:164,POSY:102,STR:天狼蜘蛛,MOVE:1>##MONSTERGROUP0#，并带回3份#COLORCOLOR_YELLOW#毒液#COLOREND##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[把毒液带给龙城的#NPCLINK<STR:杂货商,NPCKEYNAME:龙城杂货商,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="3" bind_require="1" >
					<group_item keyname="毒液" />
				</group>
			</group_items>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天狼蜘蛛" />
					<group_hunting keyname="超级天狼蜘蛛" />
					<group_hunting keyname="挖肉天狼蜘蛛" />
					<group_hunting keyname="精英天狼蜘蛛" />
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