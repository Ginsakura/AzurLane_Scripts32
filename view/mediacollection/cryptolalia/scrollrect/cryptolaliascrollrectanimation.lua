slot0 = class("CryptolaliaScrollRectAnimation")

function slot0.Ctor(slot0, slot1)
	slot0._tf = slot1
	slot0.isInit = false
end

function slot0.Init(slot0)
	slot0.animation = slot0._tf:GetComponent(typeof(Animation))
	slot0.dftAniEvent = slot0._tf:GetComponent(typeof(DftAniEvent))

	slot0.dftAniEvent:SetTriggerEvent(function ()
		if uv0.onTrigger then
			uv0.onTrigger()
		end

		uv0.onTrigger = nil
	end)
	slot0.dftAniEvent:SetEndEvent(function ()
		if uv0.callback then
			uv0.callback()
		end
	end)

	slot0.subAnim = slot0._tf:Find("Main/anim")
	slot0.subAnimation = slot0.subAnim:GetComponent(typeof(Animation))
	slot0.subDftAniEvent = slot0.subAnim:GetComponent(typeof(DftAniEvent))

	slot0.subDftAniEvent:SetStartEvent(function ()
		uv0.playing = true
	end)
	slot0.subDftAniEvent:SetEndEvent(function ()
		uv0.playing = false

		if uv0.onLastUpdate then
			uv0.onLastUpdate()

			uv0.onLastUpdate = nil
		end
	end)

	slot0.playing = false

	if not slot0.handle then
		slot0.handle = UpdateBeat:CreateListener(slot0.Update, slot0)
	end

	UpdateBeat:AddListener(slot0.handle)

	slot0.isInit = true
end

function slot0.Update(slot0)
	if slot0.playing and slot0.onUpdate then
		slot0.onUpdate(slot0:Evaluate())
	elseif not slot0.playing and slot0.onUpdate then
		slot0.onUpdate = nil
	end
end

function slot0.Play(slot0, slot1)
	if not slot0.isInit then
		slot0:Init()
	end

	slot0:Stop()
	slot0.animation:Play("anim_Cryptolalia_change")
	slot0.subAnimation:Play(slot1 <= 0 and "anim_Cryptolalia_listup" or "anim_Cryptolalia_listdown")

	return uv0
end

function slot0.OnUpdate(slot0, slot1)
	slot0.onUpdate = slot1

	return uv0
end

function slot0.OnLastUpdate(slot0, slot1)
	slot0.onLastUpdate = slot1

	return uv0
end

function slot0.OnTrigger(slot0, slot1)
	slot0.onTrigger = slot1

	return uv0
end

function slot0.OnComplete(slot0, slot1)
	slot0.callback = slot1

	return uv0
end

function slot0.Evaluate(slot0)
	return slot0.subAnim.localPosition
end

function slot0.Stop(slot0)
	slot0.playing = false

	slot0.animation:Stop()
	slot0.subAnimation:Stop()
end

function slot0.Dispose(slot0)
	slot0.dftAniEvent:SetTriggerEvent(nil)
	slot0.dftAniEvent:SetEndEvent(nil)
	slot0.subDftAniEvent:SetStartEvent(nil)
	slot0.subDftAniEvent:SetEndEvent(nil)

	if slot0.handle then
		UpdateBeat:RemoveListener(slot0.handle)
	end
end

return slot0
