--��Чģ�����Եĺ궨��
local STR_PAGECOUNT = 16
local MAX_SUBMAGICCOUNT = 16
local MAGIC_MAX_ANI_IMAGE_DIR = 16
local i = 0
eMagicID												=i;i=i+1--//0��Чģ��ID
eAniID													=i;i=i+1--//1����ID
eAniXScale												=i;i=i+1--//2����X���ű�
eAniYScale												=i;i=i+1--//3����Y���ű�
eAniDirction											=i;i=i+1--//4����������
eFramePerDir											=i;i=i+1--//5ÿ����֡��
eAniType												=i;i=i+1--//6�������淽ʽ(��������,ȡֵ�μ�eMagicAniType)
eAniSpeed												=i;i=i+1--//7�����ٶ�
eAniBlendType											=i;i=i+1--//8������Ϸ�ʽ(ȡֵ�μ�eMagicAniBlendType)
eAniColor												=i;i=i+1--//9�����ɫ(ABGR)
eAniSortType											=i;i=i+1--//10��������ʽ(ȡֵ�μ�eMagicAniSortType)
eCanCreateOnFbd											=i;i=i+1--//11��Ч�Ƿ��ܲ������赲��
eDrawOncePerGrid										=i;i=i+1--//12ͬ��Ч��һ�����ص�ʱ�Ƿ�ֻ����һ��
eSelfTimeDelay											=i;i=i+1--//13������Ч�ӳ�ʱ��
eNotSelfTimeDelay										=i;i=i+1--//14������Ч�ӳ�ʱ��
eCreateStyle											=i;i=i+1--//15��Ч���ɷ�ʽ(ȡֵ�μ�eMagicCreateStyle)
eLifeCycle												=i;i=i+1--//16��Ч������
eDestroyOccasion										=i;i=i+1--//17��Ч����ʱ��(ȡֵ�μ�eMagicDestroyOccasion)
eSourcePosition											=i;i=i+1--//18����λ��(ȡֵ�μ�eMagicPosition)
eTargetPosition											=i;i=i+1--//19Ŀ��λ��(ȡֵ�μ�eMagicPosition)
eFollowType												=i;i=i+1--//20���淽ʽ
eMoveType												=i;i=i+1--//21�˶���ʽ
eSpeed													=i;i=i+1--//22�˶��ٶ�
eCollideType											=i;i=i+1--//23��ײ��ʽ(ȡֵ�μ�eMagicCollideType)
eCollideResult											=i;i=i+1--//24��ײ���(ȡֵ�μ�eMagicCollideResult)
eCollideScopeX											=i;i=i+1--//25��ײX�ݲ�
eCollideScopeY											=i;i=i+1--//26��ײY�ݲ�
eSoundDelayTime											=i;i=i+1--//27�����ӳٲ���ʱ��
eSoundLoop												=i;i=i+1--//28�����Ƿ�ѭ��
eSoundDelByMagic										=i;i=i+1--//29�Ƿ�����Ч����ʧ
eSubMagicCount											=i;i=i+1--//30����Ч����
eMagicName												=i;i=i+1--//31��Ч����
eAniParam = eMagicName + STR_PAGECOUNT							--//47 ��������(��|�ָ�)
eCreateParam = eAniParam + STR_PAGECOUNT						--//63 ���ɲ���(��|�ָ�)
eParticleID = eCreateParam + STR_PAGECOUNT						--//79 ����ID
eSoundName = eParticleID + STR_PAGECOUNT						--//95 ������
eSubMagicID = eSoundName + STR_PAGECOUNT						--//111����Ч����,����Ч����������Ч
eCreateOccasions = eSubMagicID + MAX_SUBMAGICCOUNT				--//127��Ч����ʱ��(ȡֵ�μ�eMagicCreateOccasion)
eTimeOfCreateOccasions = eCreateOccasions + MAX_SUBMAGICCOUNT	--//143��Ч����ʱ�����ʱ��
eCreateInPlaces = eTimeOfCreateOccasions + MAX_SUBMAGICCOUNT	--//159����Ч��ǰ���ڵ���˲���
eDrawOffsets = eCreateInPlaces + MAX_SUBMAGICCOUNT				--//175��ƫ��(X|Y)
eCenterOffsets = eDrawOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4		--//239��ƫ��(X|Y)
eScriptOnNew = eCenterOffsets + MAGIC_MAX_ANI_IMAGE_DIR * 4		--//303��Ч��ʼ�ű�
eScriptOnDel = eScriptOnNew + STR_PAGECOUNT						--//319��Чֹͣ�ű�

--��Чʵ�����Եĺ궨��
i = 0
MAGIC_PROP_MAGICOBJID									=i;i=i+1--//��Чʵ��ID
MAGIC_PROP_TEMPLATEID									=i;i=i+1--//��Чģ��ID
MAGIC_PROP_TEMPLATEHANDLE								=i;i=i+1--//��Чģ��ָ��
MAGIC_PROP_TOPPARENTID									=i;i=i+1--//���㸸��Чʵ���ID
MAGIC_PROP_POINTLIST									=i;i=i+1--//��ص����� 0: Ŀ�ĵ�, 1:�����
MAGIC_PROP_ROLELIST										=i;i=i+1--//��ؽ�ɫ����, 0: ������, 1:Ŀ����

--�ӳ���Ч���Եĺ궨��
i = 0
DELAYMAGIC_PROP_TEMPLATEID								=i;i=i+1--//��Чģ��ID
DELAYMAGIC_PROP_TOPPARENTID								=i;i=i+1--//���㸸��Чʵ���ID
DELAYMAGIC_PROP_POINTLIST								=i;i=i+1--//��ص����� 0: Ŀ�ĵ�, 1:�����
DELAYMAGIC_PROP_ROLELIST								=i;i=i+1--//��ؽ�ɫ����, 0: ������, 1:Ŀ����
