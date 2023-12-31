slot0 = class("CommanderMsgBoxPage", import("...base.BaseSubView"))

function slot0.getUIName(slot0)
	return "CommanderMsgBoxUI"
end

function slot0.OnInit(slot0)
	slot0.cancelBtn = slot0._tf:Find("frame/cancel_btn")
	slot0.text = slot0._tf:Find("frame/bg/content/Text")
	slot0.text1 = slot0._tf:Find("frame/bg/content/Text1")
	slot0.text2 = slot0._tf:Find("frame/bg/content/Text2")
	slot0.confirmBtn = slot0._tf:Find("frame/confirm_btn")
	slot0.closeBtn = slot0._tf:Find("frame/close_btn")

	onButton(slot0, slot0._tf, function ()
		uv0:Hide()
	end, SFX_PANEL)
end

function slot0.Show(slot0, slot1)
	uv0.super.Show(slot0)

	if slot1.content1 then
		setText(slot0.text1, slot1.content)
		setText(slot0.text2, slot1.content1)
	elseif slot1.content then
		setText(slot0.text, setColorStr(slot1.content, "#847D7B"))
	end

	slot0.layer = slot1.layer

	onButton(slot0, slot0.cancelBtn, function ()
		uv0:Hide()

		if uv1.onNo then
			uv1.onNo()
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.confirmBtn, function ()
		uv0:Hide()

		if uv1.onYes then
			uv1.onYes()
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.closeBtn, function ()
		uv0:Hide()

		if uv1.onClose then
			uv1.onClose()
		end
	end, SFX_PANEL)

	if slot1.onShow then
		slot1.onShow()
	end

	slot0._tf:SetAsLastSibling()
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf, false, {
		weight = slot0.layer or LayerWeightConst.SECOND_LAYER
	})
end

function slot0.Hide(slot0)
	uv0.super.Hide(slot0)
	setText(slot0.text, "")
	setText(slot0.text1, "")
	setText(slot0.text2, "")
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf, slot0._parentTf)
end

function slot0.OnDestroy(slot0)
	slot0:Hide()
end

return slot0
