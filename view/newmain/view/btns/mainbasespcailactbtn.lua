slot0 = class("MainBaseSpcailActBtn")

function slot0.Ctor(slot0, slot1, slot2)
	pg.DelegateInfo.New(slot0)

	slot0.parentTf = slot1
	slot0.event = slot2
	slot0.isloading = false
end

function slot0.Init(slot0, slot1)
	slot0.isScale = slot1

	if slot0.isloading then
		return
	end

	if not slot0._tf then
		slot0.isloading = true

		ResourceMgr.Inst:getAssetAsync("ui/" .. slot0:GetUIName(), "", UnityEngine.Events.UnityAction_UnityEngine_Object(function (slot0)
			uv0.isloading = false

			if uv0.exited then
				return
			end

			uv0._tf = Object.Instantiate(slot0, uv0.parentTf).transform

			uv0:OnRegister()
			uv0:OnInit()
			onButton(uv0, uv0._tf, function ()
				uv0:OnClick()
			end, SFX_MAIN)

			if uv0.shouldHide then
				setActive(uv0._tf, false)
			end
		end), true, true)
	else
		slot0:OnInit()
	end

	slot0:CheckHide()
end

function slot0.Clear(slot0)
	if not IsNil(slot0._tf) then
		Destroy(slot0._tf.gameObject)

		slot0._tf = nil

		slot0:OnClear()
	end
end

function slot0.Dispose(slot0)
	slot0.exited = true

	pg.DelegateInfo.Dispose(slot0)
	slot0:Clear()
end

function slot0.Refresh(slot0)
	slot0:CheckHide()
end

function slot0.CheckHide(slot0)
	if slot0.shouldHide and not IsNil(slot0._tf) then
		setActive(slot0._tf, true)
	end

	slot0.shouldHide = false
end

function slot0.Disable(slot0)
	slot0.shouldHide = true
end

function slot0.InShowTime(slot0)
	assert("overview me !!!")
end

function slot0.GetUIName(slot0)
end

function slot0.OnClick(slot0)
end

function slot0.OnRegister(slot0)
end

function slot0.OnInit(slot0)
end

function slot0.OnClear(slot0)
end

return slot0
