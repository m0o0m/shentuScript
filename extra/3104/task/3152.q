<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3152" name="[主线]-秘海封印危机" type="1" suggest_level="1" visible="1" next_id="3153">
		<description>
			秘境内的恶魔正在冲击封印，为了大陆的安全，需要一位勇敢的人进入秘境内升级守护石，你愿意提供帮助吗？\n　　只要你进入秘境，我都会给你300颗升级守护石的材料。当然，因为初次进入秘境，你只需要了解了解情况即可。
		</description>
		<dialogue>
			<brief>秘境内的恶魔正在冲击封印，为了大陆的安全，需要一位勇敢的人进入秘境内升级守护石，你愿意提供帮助吗？\n　　只要你进入秘境，我都会给你300颗升级守护石的材料。当然，因为初次进入秘境，你只需要了解了解情况即可。</brief>
			<await>进入秘海封印之内，了解怪物冲击封印的情况。</await>
			<finish>少年，这里就是秘海封印！恶魔们时刻都想着冲破封印进入大陆，我们必须时刻警惕。作为奖励，我送你一颗时之沙砾吧！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3151" />
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
			<![CDATA[进入秘海封印之内，与秘境内的#COLORCOLOR_GOLD#秘境守护者#COLOREND#对话，了解怪物冲击封印的情况。]]>
			</progressing>
			<accomplishing>
			<![CDATA[进入秘海封印之内，与秘境内的#COLORCOLOR_GOLD#秘境守护者#COLOREND#对话，了解怪物冲击封印的情况。]]>
			</accomplishing>
		</tracker>
		<rewards exp="120000" >
			<awards>
				<award keyname="时之沙砾"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>