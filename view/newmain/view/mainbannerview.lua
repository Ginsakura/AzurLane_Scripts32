slot0 = class("MainBannerView", import("view.base.BaseEventLogic"))

function slot0.Ctor(slot0, slot1, slot2)
	uv0.super.Ctor(slot0, slot2)
	pg.DelegateInfo.New(slot0)

	slot0._tf = slot1
	slot0._go = slot1.gameObject
	slot0.event = slot2
	slot0.scrollSnap = BannerScrollRect.New(findTF(slot1, "mask/content"), findTF(slot1, "dots"))
end

function slot0.Init(slot0)
	slot1 = getProxy(ActivityProxy):getBannerDisplays()

	slot0:UpdateItems(slot1)

	slot0.banners = slot1
end

function slot0.Refresh(slot0)
	if #slot0.banners ~= #getProxy(ActivityProxy):getBannerDisplays() then
		slot0:Clear()
		slot0:Init()
	else
		slot0.scrollSnap:Resume()
	end
end

function slot0.UpdateItems(slot0, slot1)
	for slot5 = 0, #slot1 - 1 do
		slot6 = slot1[slot5 + 1]

		LoadImageSpriteAsync("activitybanner/" .. slot6.pic, slot0.scrollSnap:AddChild())
		setActive(findTF(slot7, "red"), slot6.type == 3 and tonumber(slot6.param) == nil and getProxy(ActivityProxy):readyToAchieveByType(ActivityConst.ACTIVITY_TYPE_LEVELAWARD))
		onButton(slot0, slot7, function ()
			MainBaseActivityBtn.Skip(uv0, uv1)
		end, SFX_MAIN)
	end

	slot0.scrollSnap:SetUp()
end

function slot0.Fold(slot0, slot1, slot2)
	slot0.lposX = slot0.lposX or slot0._tf.localPosition.x

	if slot2 == 0 then
		slot0._go.transform.localPosition = Vector3(slot1 and slot0.lposX + 1200 or slot0.lposX, slot0._go.transform.localPosition.y, 0)
	else
		LeanTween.moveLocalX(slot0._go, slot3, slot2):setEase(LeanTweenType.easeInOutExpo)
	end
end

function slot0.Disable(slot0)
	slot0.scrollSnap:Puase()

	slot0.lposX = nil
end

function slot0.Clear(slot0)
	slot0.scrollSnap:Reset()
end

function slot0.Dispose(slot0)
	slot0:disposeEvent()
	pg.DelegateInfo.Dispose(slot0)
	slot0:Clear()
	slot0.scrollSnap:Dispose()

	slot0.scrollSnap = nil
end

return slot0
