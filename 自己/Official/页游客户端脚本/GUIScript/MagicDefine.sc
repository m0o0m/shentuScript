package script
{
	public class MagicDefine
	{
		//��Чģ�����Եĺ궨��
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

		//��Чʵ�����Եĺ궨��

		var MAGIC_PROP_MAGICOBJID		= 0;
		var MAGIC_PROP_TEMPLATEID		= 0;
		var MAGIC_PROP_TEMPLATEHANDLE	= 0;
		var MAGIC_PROP_TOPPARENTID		= 0;
		var MAGIC_PROP_POINTLIST		= 0;
		var MAGIC_PROP_ROLELIST			= 0;

		//�ӳ���Ч���Եĺ궨��
		var DELAYMAGIC_PROP_TEMPLATEID	= 0;
		var DELAYMAGIC_PROP_TOPPARENTID	= 0;
		var DELAYMAGIC_PROP_POINTLIST	= 0;
		var DELAYMAGIC_PROP_ROLELIST	= 0;

		function MagicDefine()
		{
			//��Чģ�����Եĺ궨��
			STR_PAGECOUNT = 16;
			MAX_SUBMAGICCOUNT = 16;
			MAGIC_MAX_ANI_IMAGE_DIR = 16;
			var i = 0;
			eMagicID												=i;i=i+1;////0��Чģ��ID
			eAniID													=i;i=i+1;////1����ID
			eAniXScale												=i;i=i+1;////2����X���ű�
			eAniYScale												=i;i=i+1;////3����Y���ű�
			eAniDirction											=i;i=i+1;////4����������
			eFramePerDir											=i;i=i+1;////5ÿ����֡��
			eAniType												=i;i=i+1;////6�������淽ʽ(��������,ȡֵ�μ�eMagicAniType)
			eAniSpeed												=i;i=i+1;////7�����ٶ�
			eAniBlendType											=i;i=i+1;////8������Ϸ�ʽ(ȡֵ�μ�eMagicAniBlendType)
			eAniColor												=i;i=i+1;////9�����ɫ(ABGR)
			eAniSortType											=i;i=i+1;////10��������ʽ(ȡֵ�μ�eMagicAniSortType)
			eCanCreateOnFbd											=i;i=i+1;////11��Ч�Ƿ��ܲ������赲��
			eDrawOncePerGrid										=i;i=i+1;////12ͬ��Ч��һ�����ص�ʱ�Ƿ�ֻ����һ��
			eSelfTimeDelay											=i;i=i+1;////13������Ч�ӳ�ʱ��
			eNotSelfTimeDelay										=i;i=i+1;////14������Ч�ӳ�ʱ��
			eCreateStyle											=i;i=i+1;////15��Ч���ɷ�ʽ(ȡֵ�μ�eMagicCreateStyle)
			eLifeCycle												=i;i=i+1;////16��Ч������
			eDestroyOccasion										=i;i=i+1;////17��Ч����ʱ��(ȡֵ�μ�eMagicDestroyOccasion)
			eSourcePosition											=i;i=i+1;////18����λ��(ȡֵ�μ�eMagicPosition)
			eTargetPosition											=i;i=i+1;////19Ŀ��λ��(ȡֵ�μ�eMagicPosition)
			eFollowType												=i;i=i+1;////20���淽ʽ
			eMoveType												=i;i=i+1;////21�˶���ʽ
			eSpeed													=i;i=i+1;////22�˶��ٶ�
			eCollideType											=i;i=i+1;////23��ײ��ʽ(ȡֵ�μ�eMagicCollideType)
			eCollideResult											=i;i=i+1;////24��ײ���(ȡֵ�μ�eMagicCollideResult)
			eCollideScopeX											=i;i=i+1;////25��ײX�ݲ�
			eCollideScopeY											=i;i=i+1;////26��ײY�ݲ�
			eSoundDelayTime											=i;i=i+1;////27�����ӳٲ���ʱ��
			eSoundLoop												=i;i=i+1;////28�����Ƿ�ѭ��
			eSoundDelByMagic										=i;i=i+1;////29�Ƿ�����Ч����ʧ
			eSubMagicCount											=i;i=i+1;////30����Ч����
			eMagicName												=i;i=i+1;////31��Ч����
			eAniParam = eMagicName + STR_PAGECOUNT;							////47 ��������(��|�ָ�)
			eCreateParam = eAniParam + STR_PAGECOUNT;						////63 ���ɲ���(��|�ָ�)
			eParticleID = eCreateParam + STR_PAGECOUNT;						////79 ����ID
			eSoundName = eParticleID + STR_PAGECOUNT;						////95 ������
			eSubMagicID = eSoundName + STR_PAGECOUNT;						////111����Ч����,����Ч����������Ч
			eCreateOccasions = eSubMagicID + MAX_SUBMAGICCOUNT;				////127��Ч����ʱ��(ȡֵ�μ�eMagicCreateOccasion)
			eTimeOfCreateOccasions = eCreateOccasions + MAX_SUBMAGICCOUNT;	////143��Ч����ʱ�����ʱ��
			eCreateInPlaces = eTimeOfCreateOccasions + MAX_SUBMAGICCOUNT;	////159����Ч��ǰ���ڵ���˲���
			eDrawOffsets = eCreateInPlaces + MAX_SUBMAGICCOUNT;				////175��ƫ��(X|Y)
			eCenterOffsets = eDrawOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4;	////239��ƫ��(X|Y)
			eScriptOnNew = eCenterOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4;	////303��Ч��ʼ�ű�
			eScriptOnDel = eScriptOnNew + STR_PAGECOUNT;					////319��Чֹͣ�ű�

			//��Чʵ�����Եĺ궨��
			i = 0;
			MAGIC_PROP_MAGICOBJID									=i;i=i+1;////��Чʵ��ID
			MAGIC_PROP_TEMPLATEID									=i;i=i+1;////��Чģ��ID
			MAGIC_PROP_TEMPLATEHANDLE								=i;i=i+1;////��Чģ��ָ��
			MAGIC_PROP_TOPPARENTID									=i;i=i+1;////���㸸��Чʵ���ID
			MAGIC_PROP_POINTLIST									=i;i=i+1;////��ص����� 0: Ŀ�ĵ�, 1:�����
			MAGIC_PROP_ROLELIST										=i;i=i+1;////��ؽ�ɫ����, 0: ������, 1:Ŀ����

			//�ӳ���Ч���Եĺ궨��
			i = 0;
			DELAYMAGIC_PROP_TEMPLATEID								=i;i=i+1;////��Чģ��ID
			DELAYMAGIC_PROP_TOPPARENTID								=i;i=i+1;////���㸸��Чʵ���ID
			DELAYMAGIC_PROP_POINTLIST								=i;i=i+1;////��ص����� 0: Ŀ�ĵ�, 1:�����
			DELAYMAGIC_PROP_ROLELIST								=i;i=i+1;////��ؽ�ɫ����, 0: ������, 1:Ŀ����

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