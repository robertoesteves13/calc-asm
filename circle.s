.global _start

.section .data
radius: .float 10.0
pi:     .float 3.14159

.section .text
_start:
    ldr r0, =radius
    vldr s0, [r0]

    ldr r1, =pi
    vldr s1, [r1]

    vmul.f32 s2, s0, s0
    vmul.f32 s2, s2, s1