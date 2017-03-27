<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="17" name="新手任务-衣服店的课程" type="1" suggest_level="1" visible="1" next_id="18">
		<description>
			凤钗？哦，我那四岁的小丫头，看见这东西亮晶晶的好看，就拿回家了，真的
给项链店老板添麻烦了，回头我亲自上门谢罪去。装备有装备的讲究，可不是乱
穿的，有兴趣听我讲一讲吗？
		</description>
		<dialogue>
			<brief>凤钗？哦，我那四岁的小丫头，看见这东西亮晶晶的好看，就拿回家了，真的给项链店老板添麻烦了，回头我亲自上门谢罪去。装备有装备的讲究，可不是乱穿的，有兴趣听我讲一讲吗？</brief>
			<await>凤钗？哦，我那四岁的小丫头，看见这东西亮晶晶的好看，就拿回家了，真的给项链店老板添麻烦了，回头我亲自上门谢罪去。装备有装备的讲究，可不是乱穿的，有兴趣听我讲一讲吗？</await>
			<finish>在天藏大陆，衣服不单单只是好看，还得好用。这就所谓的装备。衣服分男装女装这个你懂吧，千万别买错了哦。需要注意的是，装备还分职业，创建人物时，选择了什么职业，就应该选择那个职业的装备，其他职业的装备是穿不起来的。按F10可以查看你的职业。懂了吗？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="16" />
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
			<![CDATA[前往-#NPCLINK<STR:衣服店老板,NPCKEYNAME:龙城衣服店内>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:衣服店老板,NPCKEYNAME:龙城衣服店内>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>