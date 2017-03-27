<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3039" name="[主线]-毒蛇之灾(2)" type="1" suggest_level="1" visible="1" next_id="3040">
		<description>
			还请勇士帮我清理10条毒蛇吧！
		</description>
		<dialogue>
			<brief>十多年前，我们在这里建立了村庄，并利用这里肥沃的土地为巫山城输送了大量的粮食。只是，我们现在遇上了大麻烦，这个月以来，毒蛇的数量突然成倍增加，我们已经有好几个人伤在毒蛇的毒牙之下！\n　　还请勇士帮我清理10条毒蛇吧！虽然不能完全清除它们，但消灭一批，我们就安全了！</brief>
			<await>帮助绝路谷的人们清理10条毒蛇！</await>
			<finish>这么快就清理掉了这么多毒蛇，真是……太令激动和惊喜了！我们可以马上收获一批食物，相信巫山城内已经等得很着急了吧。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3038" />
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
			<![CDATA[在绝路谷击败10只#LINK<MAP:绝路谷,POSX:159,POSY:149,STR:毒蛇,MOVE:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:绝路谷杂货商,NPCKEYNAME:绝路谷杂货商,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="白蛇" />
					<group_hunting keyname="青蛇" />
					<group_hunting keyname="红蛇" />
					<group_hunting keyname="黑水蛇" />
					<group_hunting keyname="魔蛇" />
					<group_hunting keyname="超级黑水蛇" />
					<group_hunting keyname="超级青蛇" />
					<group_hunting keyname="超级红蛇" />
					<group_hunting keyname="超级白蛇" />
					<group_hunting keyname="挖肉黑水蛇" />
					<group_hunting keyname="挖肉青蛇" />
					<group_hunting keyname="挖肉红蛇" />
					<group_hunting keyname="挖肉白蛇" />
					<group_hunting keyname="精英黑水蛇" />
					<group_hunting keyname="精英青蛇" />
					<group_hunting keyname="精英红蛇" />
					<group_hunting keyname="精英白蛇" />
					<group_hunting keyname="巨蛇" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="63000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>