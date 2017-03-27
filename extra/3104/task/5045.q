<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5045" name="[剧情]-丢失的荣耀" type="2" suggest_level="1" visible="1" next_id="5046">
		<description>
			为了拾取我曾经丢失的荣耀，我很想消灭至少20只风魔。不过，十年来的愧疚拖累了我的身体，我的实力已经下降了两个阶位，亲手消灭风魔的计划如今看来成为奢望。冒险者，你愿意帮我弥补这个遗憾吗？
		</description>
		<dialogue>
			<brief>为了拾取我曾经丢失的荣耀，我很想消灭至少20只风魔。不过，十年来的愧疚拖累了我的身体，我的实力已经下降了两个阶位，亲手消灭风魔的计划如今看来成为奢望。冒险者，你愿意帮我弥补这个遗憾吗？</brief>
			<await>消灭20只风魔。</await>
			<finish>虽然不如亲手来得完美，但总算可以稍微放心了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5044" />
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
			<![CDATA[消灭20只#LINK<MAP:天荒阵5,POSX:192,POSY:61,STR:风魔>##MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="风魔1" />
					<group_hunting keyname="风魔2" />
					<group_hunting keyname="风魔3" />
					<group_hunting keyname="风魔4" />
					<group_hunting keyname="风魔5" />
					<group_hunting keyname="超级风魔1" />
					<group_hunting keyname="精英风魔1" />
					<group_hunting keyname="挖肉风魔1" />
					<group_hunting keyname="挖肉风魔2" />
					<group_hunting keyname="挖肉风魔3" />
					<group_hunting keyname="挖肉风魔4" />
					<group_hunting keyname="挖肉风魔5" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="555000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>