<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3136" name="[主线]-天荒阵的危机（二）" type="1" suggest_level="1" visible="1" next_id="3137">
		<script name="3136" />
		<description>
			黑暗纪元，那是人类最辉煌的时代，天荒阵封印祭坛被建造在龙城之内，镇压强大的恶魔，它们没有任何逃脱的机会。\n　　但是，神战毁掉了龙城，守护天荒阵的力量被严重削弱，我们必须每时每刻给予关注，一刻都不可放松。
		\n　　随着时间的推移，有无数的武士在力量的诱使下慢慢堕落了，他们为了得到血禅师的力量，偷偷潜入阵中，最后，魔性攻心，化身邪恶！\n　　现在必须进行清理了，请进入天荒阵击杀20个堕落的人类，他们一般都天荒阵五层及更深层的地方。
		</description>
		<dialogue>
			<brief>黑暗纪元，那是人类最辉煌的时代，天荒阵封印祭坛被建造在龙城之内，镇压强大的恶魔，它们没有任何逃脱的机会。\n　　但是，神战毁掉了龙城，守护天荒阵的力量被严重削弱，我们必须每时每刻给予关注，一刻都不可放松。
			\n　　随着时间的推移，有无数的武士在力量的诱使下慢慢堕落了，他们为了得到血禅师的力量，偷偷潜入阵中，最后，魔性攻心，化身邪恶！\n　　现在必须进行清理了，请进入天荒阵击杀20个堕落的人类，他们一般都天荒阵五层及更深层的地方。</brief>
			<await>好象数量不对呢，你杀了20个坠落的人类吗？</await>
			<finish>辛苦你了！有了这番雷霆手段，进入天荒阵帮助血禅师的堕落人类必然会大大减少！我也可以松口气了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3135" />
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
			<![CDATA[进入#LINK<MAP:天荒阵5,POSX:162,POSY:28,STR:天荒阵五层,MOVE:1>#击杀任意20个#COLORCOLOR_YELLOW#刀客、古怪刀客...#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#复命]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
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