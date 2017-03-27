<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="37" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#虫洞终章" type="1" suggest_level="1" visible="1" next_id="38">
		<script name="37q" />
		<description>
			你……你……你是要一人前往？太冒险了吧？既然你执意要去也好，若是不敌，便立马退出来，我这此做接应。留得青山在不愁没柴烧，等大部队来了，我们再想对策。
		</description>
		<dialogue>
			<brief>你……你……你是要一人前往？太冒险了吧？既然你执意要去也好，若是不敌，便立马退出来，我这此做接应。留得青山在不愁没柴烧，等大部队来了，我们再想对策。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>哟，可算见到你的人了。情况怎么样了？你是不知道这几天整个巫山城传的沸沸扬扬的，什么版本都有。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="36" />
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
			<![CDATA[#LINK<MAP:蜈蚣洞副本,POSX:48,POSY:44,STR:毒虫洞># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:物品回收员,NPCKEYNAME:巫山城物品回收员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="触龙神副本" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>