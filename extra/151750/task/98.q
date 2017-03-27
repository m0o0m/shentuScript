<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="98" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#神殿的秘密" type="1" suggest_level="1" visible="1" next_id="99">
		<script name="任务执行脚本" />
		<description>
			是时候加入或自己培养一个势力了，要在江湖上立足，这是基本的要求。如果你的实力够强，可以自己建立一个公会，若你的实力还不够强，那就去加入强者的公会，对你以后的发展很有好处。
		</description>
		<dialogue>
			<brief>远古神殿一层为免费场所，每次进入二层开始需要消耗一个“远古卷轴”，三层、四层不额外再收费。打装备好地方。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>怎么样，地方还可以吧，绝对值得一去。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="97" />
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
			<![CDATA[#NPCLINK<STR:远古神殿一层的任何BOSS,NPCKEYNAME:玛雅神殿使者,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:福利中心,NPCKEYNAME:巫山城福利中心,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="玛雅一赤月恶魔" />
					<group_hunting keyname="玛雅一祖玛教主" />
					<group_hunting keyname="玛雅一沃玛教主" />
					<group_hunting keyname="玛雅一白色恶猪" />
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