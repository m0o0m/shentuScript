<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3135" name="[主线]-天荒阵的危机（一）" type="1" suggest_level="1" visible="1" next_id="3136">
		<description>
			前段时间恶魔对龙城发动的袭击中，天荒阵封印祭坛是恶魔的首要目标，幸好，大家成功地击退了恶魔，但是，天荒阵的封印却有所松动，现在，里面的怪物正在倾尽全力冲击封印，一旦被怪物冲出，后果将不堪设想！
\n　　我受天机老人所托进入其中，击杀20只任意妖魔，削弱恶魔的力量
		</description>
		<dialogue>
			<brief>前段时间恶魔对龙城发动的袭击中，天荒阵封印祭坛是他们的首要目标，幸好，我们成功地击退了恶魔，但是，天荒阵的封印却有所松动，现在，里面的怪物正在倾尽全力冲击封印，一旦被怪物冲出，后果将不堪设想！
			\n　　我希望你能进入其中，击杀20只任意妖魔，削弱恶魔的力量。</brief>
			<await>怎么，20只你都杀不完吗</await>
			<finish>辛苦你了！妖魔总算得到了初步清理。
			\n　　但是，天荒阵的危机只是初步得到缓解而已。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3134" />
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
			<![CDATA[进入#COLORCOLOR_GREENG##LINK<MAP:天荒阵1,POSX:89,POSY:97,STR:天荒阵,MOVE:1>##COLOREND#击杀20只任意妖魔#MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#复命]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="蓝兽1" />
					<group_hunting keyname="超级蓝兽1" />
					<group_hunting keyname="挖肉蓝兽1" />
					<group_hunting keyname="精英蓝兽1" />
					<group_hunting keyname="风魔1" />
					<group_hunting keyname="风魔2" />
					<group_hunting keyname="风魔3" />
					<group_hunting keyname="风魔4" />
					<group_hunting keyname="风魔5" />
					<group_hunting keyname="超级风魔1" />
					<group_hunting keyname="挖肉风魔1" />
					<group_hunting keyname="挖肉风魔2" />
					<group_hunting keyname="挖肉风魔3" />
					<group_hunting keyname="挖肉风魔4" />
					<group_hunting keyname="挖肉风魔5" />
					<group_hunting keyname="精英风魔1" />
					<group_hunting keyname="沙石魔1" />
					<group_hunting keyname="沙石魔2" />
					<group_hunting keyname="沙石魔3" />
					<group_hunting keyname="沙石魔4" />
					<group_hunting keyname="沙石魔5" />
					<group_hunting keyname="挖肉沙石魔1" />
					<group_hunting keyname="挖肉沙石魔2" />
					<group_hunting keyname="挖肉沙石魔3" />
					<group_hunting keyname="挖肉沙石魔4" />
					<group_hunting keyname="挖肉沙石魔5" />
					<group_hunting keyname="超级沙石魔1" />
					<group_hunting keyname="精英沙石魔1" />
					<group_hunting keyname="散兵1" />
					<group_hunting keyname="挖肉散兵1" />
					<group_hunting keyname="超级散兵1" />
					<group_hunting keyname="精英散兵1" />
					<group_hunting keyname="魔兵1" />
					<group_hunting keyname="挖肉魔兵1" />
					<group_hunting keyname="超级魔兵1" />
					<group_hunting keyname="精英魔兵1" />
					<group_hunting keyname="古怪刀客1" />
					<group_hunting keyname="挖肉古怪刀客1" />
					<group_hunting keyname="超级古怪刀客1" />
					<group_hunting keyname="精英古怪刀客1" />
					<group_hunting keyname="鬼面刀手1" />
					<group_hunting keyname="挖肉鬼面刀手1" />
					<group_hunting keyname="超级鬼面刀手1" />
					<group_hunting keyname="精英鬼面刀手1" />
					<group_hunting keyname="双刀侩子手1" />
					<group_hunting keyname="挖肉双刀侩子手1" />
					<group_hunting keyname="超级双刀侩子手1" />
					<group_hunting keyname="精英双刀侩子手1" />
					<group_hunting keyname="刀奴1" />
					<group_hunting keyname="刀奴2" />
					<group_hunting keyname="挖肉刀奴1" />
					<group_hunting keyname="挖肉刀奴2" />
					<group_hunting keyname="超级刀奴1" />
					<group_hunting keyname="精英刀奴1" />
					<group_hunting keyname="巨石傀儡" />
					<group_hunting keyname="血禅师" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>