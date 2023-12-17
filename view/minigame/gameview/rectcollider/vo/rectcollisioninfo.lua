slot0 = class("RectCollisionInfo")

function slot0.Ctor(slot0, slot1)
	slot0.above = false
	slot0.below = false
	slot0.left = false
	slot0.right = false
	slot0.fullSliding = false
	slot0.climbingSlope = false
	slot0.descendingSlope = false
	slot0.slidingDownMaxSlope = false
	slot0.slopeAngle = 0
	slot0.slopeAngleOld = 0
	slot0.slopeNormal = Vector3.zero
	slot0.horizontalLeftTfs = {}
	slot0.horizontalRightTfs = {}
	slot0.verticalTopTfs = {}
	slot0.verticalBottomTfs = {}
	slot0.script = nil
	slot0.scriptWeight = nil
	slot0.scriptTime = nil
	slot0.scriptOverrideAble = nil
	slot0.frameRate = 0.016666666666666666
	slot0.config = RectCollisionData.New(slot1)
	slot0.layerMask = LayerMask.GetMask("Collider", "Character")
	slot0.ignoreLayerMask = {
		LayerMask.NameToLayer("Character")
	}
	slot0.playerInput = Vector2(0, 0)
	slot0.directionalInput = Vector2.zero
	slot0._velocity = Vector3.zero
	slot0.standingOnPlatform = false
	slot0.velocityXSmoothing = 0
	slot0.moveAmountOld = 0
	slot0.moveAmount = 0
	slot0.fallingThroughPlatform = false
	slot0.MoveDir = 1
	slot0.FaceDir = 1
	slot0.LockFaceDir = false
	slot0.useJumpTimes = 0
	slot0.holdInSlider = false
	slot0.lockHorizontalMove = false
	slot0.lockVerticalMove = false
	slot0.sprint = false
	slot0.damaged = false

	function slot0.wallSliding()
		return slot0
	end

	function slot0.wallSlidingDown()
		return uv0.wallSliding and uv0.moveAmount < 0
	end

	function slot0.wallDirX()
		return uv0:getWallDirX()
	end
end

function slot0.getVelocity(slot0)
	return slot0._velocity
end

function slot0.setVelocity(slot0, slot1)
	slot0._velocity.x = slot1.x
	slot0._velocity.y = slot1.y
	slot0._velocity.z = slot1.z
end

function slot0.changeVelocity(slot0, slot1, slot2, slot3)
	slot0._velocity.x = slot1 or slot0._velocity.x
	slot0._velocity.y = slot2 or slot0._velocity.y
	slot0._velocity.z = slot3 or slot0._velocity.z
end

function slot0.setPos(slot0, slot1)
	slot0._anchoredPosition = slot1
end

function slot0.getPos(slot0)
	return slot0._anchoredPosition or Vector2.zero
end

function slot0.setScript(slot0, slot1, slot2, slot3, slot4)
	slot0.script = slot1
	slot0.scriptWeight = slot2
	slot0.scriptTime = slot3
	slot0.scriptOverrideAble = slot4
end

function slot0.removeScript(slot0)
	if slot0.script then
		slot0.script:active(false)
	end

	slot0.script = nil
	slot0.scriptWeight = nil
	slot0.scriptTime = nil
	slot0.scriptOverrideAble = nil
end

function slot0.getWallDirX(slot0)
	if slot0.fullSliding then
		if slot0.left then
			return -1
		elseif slot0.right then
			return 1
		end
	end

	return 0
end

function slot0.reset(slot0)
	slot0.above = false
	slot0.below = false
	slot0.left = false
	slot0.right = false
	slot0.climbingSlope = false
	slot0.descendingSlope = false
	slot0.slidingDownMaxSlope = false
	slot0.lockHorizontalMove = false
	slot0.lockVerticalMove = false
	slot0.fullSliding = false
	slot0.slopeNormal = Vector3.zero
	slot0.slopeAngleOld = slot0.slopeAngle
	slot0.slopeAngle = 0
	slot0.standingOnPlatform = false
	slot0.horizontalLeftTfs = {}
	slot0.horizontalRightTfs = {}
	slot0.verticalTopTfs = {}
	slot0.verticalBottomTfs = {}
end

return slot0
