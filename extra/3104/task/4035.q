<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4035" name="[支线]-驯兽师在行动" type="2" suggest_level="1" visible="1" next_id="4036">
		<description>
			随着恶魔的活动日益频繁，天藏大陆已经变得比过去更加危险，每一个勇士都应该学会充分利用每一项资源。如果你认同我的观点，不妨去找驯兽师，她会让你得到更多！
		</description>
		<dialogue>
			<brief>随着恶魔的活动日益频繁，天藏大陆已经变得比过去更加危险，每一个勇士都应该学会充分利用每一项资源。如果你认同我的观点，不妨去找驯兽师，她会让你得到更多！</brief>
			<await>与驯兽师对话。</await>
			<finish>是的，我这里有一项捕捉野马并将野马驯养为坐骑的技术。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="15" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="11000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="20000" >
			<awards>
				<award keyname="套索"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>