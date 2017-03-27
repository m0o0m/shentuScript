<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3219" name="[主线]-不能遵守的约定(3)" type="1" suggest_level="1" visible="1" next_id="3220">
		<description>
			事实上，我也正在找一个从东临城前线回来的勇士。那个……你知道一个名叫多多的战士吗？他是东临城的守卫哦。\n　　啊，不知道的话，那你能帮我送一封信吗？只要交给东临城的老兵，就可以转交到他手上了。
		</description>
		<dialogue>
			<brief>事实上，我也正在找一个从东临城前线回来的勇士。那个……你知道一个名叫多多的战士吗？他是东临城的守卫哦。\n　　啊，不知道的话，那你能帮我送一封信吗？只要交给东临城的老兵，就可以转交到他手上了。</brief>
			<await>将信交给东临城的老兵。</await>
			<finish>这是送给多多的信吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3218" />
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
			<![CDATA[找到东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>