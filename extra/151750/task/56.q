<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="56" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#梦回神歌城" type="1" suggest_level="1" visible="1" next_id="57">
		<script name="56q" />
		<description>
			怎么样，要不带你体验一把？
		</description>
		<dialogue>
			<brief>怎么样，要不带你体验一把？</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>不过那只是一场幻象，若真要去争夺神歌城，你需要加入实力足够强大的公会，才有资格去争夺它。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="55" />
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
			<![CDATA[夺得 #LINK<MAP:神歌城副本,POSX:112,POSY:140,STR:神歌城>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:物品回收员,NPCKEYNAME:巫山城物品回收员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="9" >
					<group_hunting keyname="弓箭手副本1" />
					<group_hunting keyname="弓箭手副本2" />
					<group_hunting keyname="弓箭手副本3" />
					<group_hunting keyname="弓箭手副本4" />
					<group_hunting keyname="副本战神" />
					<group_hunting keyname="副本法神" />
					<group_hunting keyname="副本道尊" />
					<group_hunting keyname="副本副城主" />
					<group_hunting keyname="副本城主" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="2" />
		</auto>
	</quest>
</quests>