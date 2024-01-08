DoubleSpeed::
	ld hl, rKEY1
	bit 7, [hl]
	jr z, SwitchSpeed
	ret

SwitchSpeed::
	set 0, [hl]
	xor a
	ldh [rIF], a
	ldh [rIE], a
	ld a, $30
	ldh [rJOYP], a
	stop ; rgbasm adds a nop after this instruction by default
	ret
