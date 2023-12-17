slot0 = class("TargetItem", import("view.miniGame.gameView.RyzaMiniGame.Reactor"))
slot1 = {
	hp1 = "4",
	speed = "3",
	power = "2",
	spirit = "6",
	bomb = "1",
	hp2 = "5"
}

function slot0.InitUI(slot0, slot1)
	slot0.type = slot1.type

	slot0._tf:Find("Image"):GetComponent(typeof(Animator)):Play(uv0[slot0.type])
	setActive(slot0._tf:Find("Burn"), false)
	slot0._tf:Find("Burn"):GetComponent(typeof(DftAniEvent)):SetEndEvent(function ()
		uv0:Destroy(false)
	end)
	eachChild(slot0._tf:Find("front"), function (slot0)
		slot0:GetComponent(typeof(DftAniEvent)):SetEndEvent(function ()
			setActive(uv0, false)
		end)
		setActive(slot0, slot0.name == uv0.drop)
	end)
end

function slot0.InitRegister(slot0, slot1)
	slot0:Register("move", function (slot0)
		if isa(slot0, MoveRyza) then
			slot0:AddItem(uv0.type)
			uv0:Destroy()
		else
			uv0:Destroy(false)
		end
	end, {
		{
			0,
			0
		}
	})
	slot0:Register("burn", function ()
		uv0:DeregisterAll()
		setActive(uv0._tf:Find("Image"), false)
		setActive(uv0._tf:Find("Burn"), true)
	end, {
		{
			0,
			0
		}
	})
end

return slot0
