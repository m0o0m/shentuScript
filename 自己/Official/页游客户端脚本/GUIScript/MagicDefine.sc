package script
{
	public class MagicDefine
	{
		//特效模板属性的宏定义
		var STR_PAGECOUNT				= 0;
		var MAX_SUBMAGICCOUNT			= 0;
		var MAGIC_MAX_ANI_IMAGE_DIR		= 0;

		var eMagicID					= 0;
		var eAniID						= 0;
		var eAniXScale					= 0;
		var eAniYScale					= 0;
		var eAniDirction				= 0;
		var eFramePerDir				= 0;
		var eAniType					= 0;
		var eAniSpeed					= 0;
		var eAniBlendType				= 0;
		var eAniColor					= 0;
		var eAniSortType				= 0;
		var eCanCreateOnFbd				= 0;
		var eDrawOncePerGrid			= 0;
		var eSelfTimeDelay				= 0;
		var eNotSelfTimeDelay			= 0;
		var eCreateStyle				= 0;
		var eLifeCycle					= 0;
		var eDestroyOccasion			= 0;
		var eSourcePosition				= 0;
		var eTargetPosition				= 0;
		var eFollowType					= 0;
		var eMoveType					= 0;
		var eSpeed						= 0;
		var eCollideType				= 0;
		var eCollideResult				= 0;
		var eCollideScopeX				= 0;
		var eCollideScopeY				= 0;
		var eSoundDelayTime				= 0;
		var eSoundLoop					= 0;
		var eSoundDelByMagic			= 0;
		var eSubMagicCount				= 0;
		var eMagicName					= 0;
		var eAniParam 					= 0;
		var eCreateParam 				= 0;
		var eParticleID 				= 0;
		var eSoundName 					= 0;
		var eSubMagicID					= 0;
		var eCreateOccasions			= 0;
		var eTimeOfCreateOccasions		= 0;
		var eCreateInPlaces				= 0;
		var eDrawOffsets				= 0;
		var eCenterOffsets				= 0;
		var eScriptOnNew				= 0;
		var eScriptOnDel				= 0;

		//特效实体属性的宏定义

		var MAGIC_PROP_MAGICOBJID		= 0;
		var MAGIC_PROP_TEMPLATEID		= 0;
		var MAGIC_PROP_TEMPLATEHANDLE	= 0;
		var MAGIC_PROP_TOPPARENTID		= 0;
		var MAGIC_PROP_POINTLIST		= 0;
		var MAGIC_PROP_ROLELIST			= 0;

		//延迟特效属性的宏定义
		var DELAYMAGIC_PROP_TEMPLATEID	= 0;
		var DELAYMAGIC_PROP_TOPPARENTID	= 0;
		var DELAYMAGIC_PROP_POINTLIST	= 0;
		var DELAYMAGIC_PROP_ROLELIST	= 0;

		function MagicDefine()
		{
			//特效模板属性的宏定义
			STR_PAGECOUNT = 16;
			MAX_SUBMAGICCOUNT = 16;
			MAGIC_MAX_ANI_IMAGE_DIR = 16;
			var i = 0;
			eMagicID												=i;i=i+1;////0特效模板ID
			eAniID													=i;i=i+1;////1动画ID
			eAniXScale												=i;i=i+1;////2动画X缩放比
			eAniYScale												=i;i=i+1;////3动画Y缩放比
			eAniDirction											=i;i=i+1;////4动画方向数
			eFramePerDir											=i;i=i+1;////5每方向帧数
			eAniType												=i;i=i+1;////6动画生存方式(动画类型,取值参见eMagicAniType)
			eAniSpeed												=i;i=i+1;////7动画速度
			eAniBlendType											=i;i=i+1;////8动画混合方式(取值参见eMagicAniBlendType)
			eAniColor												=i;i=i+1;////9混合颜色(ABGR)
			eAniSortType											=i;i=i+1;////10动画排序方式(取值参见eMagicAniSortType)
			eCanCreateOnFbd											=i;i=i+1;////11特效是否能产生在阻挡点
			eDrawOncePerGrid										=i;i=i+1;////12同特效在一格上重叠时是否只绘制一次
			eSelfTimeDelay											=i;i=i+1;////13自身特效延迟时间
			eNotSelfTimeDelay										=i;i=i+1;////14他人特效延迟时间
			eCreateStyle											=i;i=i+1;////15特效生成方式(取值参见eMagicCreateStyle)
			eLifeCycle												=i;i=i+1;////16特效生命期
			eDestroyOccasion										=i;i=i+1;////17特效销毁时机(取值参见eMagicDestroyOccasion)
			eSourcePosition											=i;i=i+1;////18生成位置(取值参见eMagicPosition)
			eTargetPosition											=i;i=i+1;////19目标位置(取值参见eMagicPosition)
			eFollowType												=i;i=i+1;////20跟随方式
			eMoveType												=i;i=i+1;////21运动方式
			eSpeed													=i;i=i+1;////22运动速度
			eCollideType											=i;i=i+1;////23碰撞方式(取值参见eMagicCollideType)
			eCollideResult											=i;i=i+1;////24碰撞结果(取值参见eMagicCollideResult)
			eCollideScopeX											=i;i=i+1;////25碰撞X容差
			eCollideScopeY											=i;i=i+1;////26碰撞Y容差
			eSoundDelayTime											=i;i=i+1;////27音乐延迟播放时间
			eSoundLoop												=i;i=i+1;////28音乐是否循环
			eSoundDelByMagic										=i;i=i+1;////29是否随特效而消失
			eSubMagicCount											=i;i=i+1;////30子特效数量
			eMagicName												=i;i=i+1;////31特效名称
			eAniParam = eMagicName + STR_PAGECOUNT;							////47 动画参数(用|分隔)
			eCreateParam = eAniParam + STR_PAGECOUNT;						////63 生成参数(用|分隔)
			eParticleID = eCreateParam + STR_PAGECOUNT;						////79 粒子ID
			eSoundName = eParticleID + STR_PAGECOUNT;						////95 音乐名
			eSubMagicID = eSoundName + STR_PAGECOUNT;						////111子特效数组,子特效还能有子特效
			eCreateOccasions = eSubMagicID + MAX_SUBMAGICCOUNT;				////127特效生成时机(取值参见eMagicCreateOccasion)
			eTimeOfCreateOccasions = eCreateOccasions + MAX_SUBMAGICCOUNT;	////143特效产生时机相关时间
			eCreateInPlaces = eTimeOfCreateOccasions + MAX_SUBMAGICCOUNT;	////159父特效当前所在点或人产生
			eDrawOffsets = eCreateInPlaces + MAX_SUBMAGICCOUNT;				////175制偏移(X|Y)
			eCenterOffsets = eDrawOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4;	////239心偏移(X|Y)
			eScriptOnNew = eCenterOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4;	////303特效开始脚本
			eScriptOnDel = eScriptOnNew + STR_PAGECOUNT;					////319特效停止脚本

			//特效实体属性的宏定义
			i = 0;
			MAGIC_PROP_MAGICOBJID									=i;i=i+1;////特效实体ID
			MAGIC_PROP_TEMPLATEID									=i;i=i+1;////特效模板ID
			MAGIC_PROP_TEMPLATEHANDLE								=i;i=i+1;////特效模板指针
			MAGIC_PROP_TOPPARENTID									=i;i=i+1;////顶层父特效实体的ID
			MAGIC_PROP_POINTLIST									=i;i=i+1;////相关点数组 0: 目的点, 1:发射点
			MAGIC_PROP_ROLELIST										=i;i=i+1;////相关角色数组, 0: 发射人, 1:目的人

			//延迟特效属性的宏定义
			i = 0;
			DELAYMAGIC_PROP_TEMPLATEID								=i;i=i+1;////特效模板ID
			DELAYMAGIC_PROP_TOPPARENTID								=i;i=i+1;////顶层父特效实体的ID
			DELAYMAGIC_PROP_POINTLIST								=i;i=i+1;////相关点数组 0: 目的点, 1:发射点
			DELAYMAGIC_PROP_ROLELIST								=i;i=i+1;////相关角色数组, 0: 发射人, 1:目的人

			addApi("STR_PAGECOUNT",STR_PAGECOUNT);
			addApi("MAX_SUBMAGICCOUNT",MAX_SUBMAGICCOUNT);
			addApi("MAGIC_MAX_ANI_IMAGE_DIR",MAGIC_MAX_ANI_IMAGE_DIR);
			addApi("eMagicID",eMagicID);
			addApi("eAniID",eAniID);
			addApi("eAniXScale",eAniXScale);
			addApi("eAniYScale",eAniYScale);
			addApi("eAniDirction",eAniDirction);
			addApi("eFramePerDir",eFramePerDir);
			addApi("eAniType",eAniType);
			addApi("eAniSpeed",eAniSpeed);
			addApi("eAniBlendType",eAniBlendType);
			addApi("eAniColor",eAniColor);
			addApi("eAniSortType",eAniSortType);
			addApi("eCanCreateOnFbd",eCanCreateOnFbd);
			addApi("eDrawOncePerGrid",eDrawOncePerGrid);
			addApi("eSelfTimeDelay",eSelfTimeDelay);
			addApi("eNotSelfTimeDelay",eNotSelfTimeDelay);
			addApi("eCreateStyle",eCreateStyle);
			addApi("eLifeCycle",eLifeCycle);
			addApi("eDestroyOccasion",eDestroyOccasion);
			addApi("eSourcePosition",eSourcePosition);
			addApi("eTargetPosition",eTargetPosition);
			addApi("eFollowType",eFollowType);
			addApi("eMoveType",eMoveType);
			addApi("eSpeed",eSpeed);
			addApi("eCollideType",eCollideType);
			addApi("eCollideResult",eCollideResult);
			addApi("eCollideScopeX",eCollideScopeX);
			addApi("eCollideScopeY",eCollideScopeY);
			addApi("eSoundDelayTime",eSoundDelayTime);
			addApi("eSoundLoop",eSoundLoop);
			addApi("eSoundDelByMagic",eSoundDelByMagic);
			addApi("eSubMagicCount",eSubMagicCount);
			addApi("eMagicName",eMagicName);
			addApi("eAniParam ",eAniParam );
			addApi("eCreateParam ",eCreateParam );
			addApi("eParticleID ",eParticleID );
			addApi("eSoundName ",eSoundName );
			addApi("eSubMagicID",eSubMagicID);
			addApi("eCreateOccasions",eCreateOccasions);
			addApi("eTimeOfCreateOccasions",eTimeOfCreateOccasions);
			addApi("eCreateInPlaces",eCreateInPlaces);
			addApi("eDrawOffsets",eDrawOffsets);
			addApi("eCenterOffsets",eCenterOffsets);
			addApi("eScriptOnNew",eScriptOnNew);
			addApi("eScriptOnDel",eScriptOnDel);
			addApi("MAGIC_PROP_MAGICOBJID",MAGIC_PROP_MAGICOBJID);
			addApi("MAGIC_PROP_TEMPLATEID",MAGIC_PROP_TEMPLATEID);
			addApi("MAGIC_PROP_TEMPLATEHANDLE",MAGIC_PROP_TEMPLATEHANDLE);
			addApi("MAGIC_PROP_TOPPARENTID",MAGIC_PROP_TOPPARENTID);
			addApi("MAGIC_PROP_POINTLIST",MAGIC_PROP_POINTLIST);
			addApi("MAGIC_PROP_ROLELIST",MAGIC_PROP_ROLELIST);
			addApi("DELAYMAGIC_PROP_TEMPLATEID",DELAYMAGIC_PROP_TEMPLATEID);
			addApi("DELAYMAGIC_PROP_TOPPARENTID",DELAYMAGIC_PROP_TOPPARENTID);
			addApi("DELAYMAGIC_PROP_POINTLIST",DELAYMAGIC_PROP_POINTLIST);
			addApi("DELAYMAGIC_PROP_ROLELIST",DELAYMAGIC_PROP_ROLELIST);
		}
	}
}