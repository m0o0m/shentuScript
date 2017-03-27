--特效模板属性的宏定义
local STR_PAGECOUNT = 16
local MAX_SUBMAGICCOUNT = 16
local MAGIC_MAX_ANI_IMAGE_DIR = 16
local i = 0
eMagicID												=i;i=i+1--//0特效模板ID
eAniID													=i;i=i+1--//1动画ID
eAniXScale												=i;i=i+1--//2动画X缩放比
eAniYScale												=i;i=i+1--//3动画Y缩放比
eAniDirction											=i;i=i+1--//4动画方向数
eFramePerDir											=i;i=i+1--//5每方向帧数
eAniType												=i;i=i+1--//6动画生存方式(动画类型,取值参见eMagicAniType)
eAniSpeed												=i;i=i+1--//7动画速度
eAniBlendType											=i;i=i+1--//8动画混合方式(取值参见eMagicAniBlendType)
eAniColor												=i;i=i+1--//9混合颜色(ABGR)
eAniSortType											=i;i=i+1--//10动画排序方式(取值参见eMagicAniSortType)
eCanCreateOnFbd											=i;i=i+1--//11特效是否能产生在阻挡点
eDrawOncePerGrid										=i;i=i+1--//12同特效在一格上重叠时是否只绘制一次
eSelfTimeDelay											=i;i=i+1--//13自身特效延迟时间
eNotSelfTimeDelay										=i;i=i+1--//14他人特效延迟时间
eCreateStyle											=i;i=i+1--//15特效生成方式(取值参见eMagicCreateStyle)
eLifeCycle												=i;i=i+1--//16特效生命期
eDestroyOccasion										=i;i=i+1--//17特效销毁时机(取值参见eMagicDestroyOccasion)
eSourcePosition											=i;i=i+1--//18生成位置(取值参见eMagicPosition)
eTargetPosition											=i;i=i+1--//19目标位置(取值参见eMagicPosition)
eFollowType												=i;i=i+1--//20跟随方式
eMoveType												=i;i=i+1--//21运动方式
eSpeed													=i;i=i+1--//22运动速度
eCollideType											=i;i=i+1--//23碰撞方式(取值参见eMagicCollideType)
eCollideResult											=i;i=i+1--//24碰撞结果(取值参见eMagicCollideResult)
eCollideScopeX											=i;i=i+1--//25碰撞X容差
eCollideScopeY											=i;i=i+1--//26碰撞Y容差
eSoundDelayTime											=i;i=i+1--//27音乐延迟播放时间
eSoundLoop												=i;i=i+1--//28音乐是否循环
eSoundDelByMagic										=i;i=i+1--//29是否随特效而消失
eSubMagicCount											=i;i=i+1--//30子特效数量
eMagicName												=i;i=i+1--//31特效名称
eAniParam = eMagicName + STR_PAGECOUNT							--//47 动画参数(用|分隔)
eCreateParam = eAniParam + STR_PAGECOUNT						--//63 生成参数(用|分隔)
eParticleID = eCreateParam + STR_PAGECOUNT						--//79 粒子ID
eSoundName = eParticleID + STR_PAGECOUNT						--//95 音乐名
eSubMagicID = eSoundName + STR_PAGECOUNT						--//111子特效数组,子特效还能有子特效
eCreateOccasions = eSubMagicID + MAX_SUBMAGICCOUNT				--//127特效生成时机(取值参见eMagicCreateOccasion)
eTimeOfCreateOccasions = eCreateOccasions + MAX_SUBMAGICCOUNT	--//143特效产生时机相关时间
eCreateInPlaces = eTimeOfCreateOccasions + MAX_SUBMAGICCOUNT	--//159父特效当前所在点或人产生
eDrawOffsets = eCreateInPlaces + MAX_SUBMAGICCOUNT				--//175制偏移(X|Y)
eCenterOffsets = eDrawOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4		--//239心偏移(X|Y)
eScriptOnNew = eCenterOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4		--//303特效开始脚本
eScriptOnDel = eScriptOnNew + STR_PAGECOUNT						--//319特效停止脚本

--特效实体属性的宏定义
i = 0
MAGIC_PROP_MAGICOBJID									=i;i=i+1--//特效实体ID
MAGIC_PROP_TEMPLATEID									=i;i=i+1--//特效模板ID
MAGIC_PROP_TEMPLATEHANDLE								=i;i=i+1--//特效模板指针
MAGIC_PROP_TOPPARENTID									=i;i=i+1--//顶层父特效实体的ID
MAGIC_PROP_POINTLIST									=i;i=i+1--//相关点数组 0: 目的点, 1:发射点
MAGIC_PROP_ROLELIST										=i;i=i+1--//相关角色数组, 0: 发射人, 1:目的人

--延迟特效属性的宏定义
i = 0
DELAYMAGIC_PROP_TEMPLATEID								=i;i=i+1--//特效模板ID
DELAYMAGIC_PROP_TOPPARENTID								=i;i=i+1--//顶层父特效实体的ID
DELAYMAGIC_PROP_POINTLIST								=i;i=i+1--//相关点数组 0: 目的点, 1:发射点
DELAYMAGIC_PROP_ROLELIST								=i;i=i+1--//相关角色数组, 0: 发射人, 1:目的人
