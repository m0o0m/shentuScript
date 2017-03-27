<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3114" name="[主线]-妖山暗穴的秘密（一）" type="1" suggest_level="1" visible="1" next_id="3115">
		<script name="3114" />
		<description>
			为了龙城永久的安宁，我们必须解决妖山暗穴的麻烦！\n　　那原是一处矿洞，但从妖山最深处逃出的千年树魔，占据了那里，他将矿工杀死，将他们的灵魂束缚在体内，并命令他们日夜不停地继续挖矿，不知道那些矿石有什么秘密？现在就去妖山暗穴带回5块它们挖掘的矿石
		</description>
		<dialogue>
			<brief>这一次袭击龙城的妖魔，其中很多怪物来自妖山暗穴，为了龙城永久的安宁，我们必须解决妖山暗穴的麻烦！
　　那原是一处矿洞，但从妖山最深处逃出的千年树魔，占据了那里，他将矿工杀死，将他们的灵魂束缚在体内，并命令他们日夜不停地继续挖矿，不知道这其中有什么秘密？我需要你带回5块矿石，你愿意帮我吗？</brief>
			<await>\n　　要5块矿石哦，数量不对吧</await>
			<finish>这种晶体矿，可真少见呀，想必，这就是树魔真正要的。但这种晶体矿石到底有什么用呢？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3113" />
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
				<trophy monster="尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="掘铲尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="掘铲尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="掘铲尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="铁镐尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="铁镐尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="铁镐尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="铁镐尸奴4" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="超级尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="超级掘铲尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="超级铁镐尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉掘铲尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉掘铲尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉掘铲尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉铁镐尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉铁镐尸奴2" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉铁镐尸奴3" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="挖肉铁镐尸奴4" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="精英尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="精英掘铲尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
				<trophy monster="精英铁镐尸奴1" item="奇怪的晶体矿石" min_num="1" max_num="1" bind_require="1" limit="5" chance="8000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[去#LINK<MAP:妖山暗穴1,POSX:82,POSY:171,STR:妖山暗穴,MOVE:1>#获得5块奇怪的#COLORCOLOR_YELLOW#晶体矿石#COLOREND##ITEMGROUP0#，从#COLORCOLOR_YELLOW#尸奴#COLOREND#、#COLORCOLOR_YELLOW#铁镐尸奴#COLOREND#、#COLORCOLOR_YELLOW#铁镐尸奴#COLOREND#身上都能得到这种矿石]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去，把奇怪的晶体矿石交给龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="5" bind_require="1" >
					<group_item keyname="奇怪的晶体矿石" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="125000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>