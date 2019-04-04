	global __class_A
__class_A:
section .data

		global __ref_SIT_A
	__ref_SIT_A		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A		dd 0

section .text

	global _start
_start:
		global __STATIC_method__A__test
	__STATIC_method__A__test:
		push ebp
		mov ebp,esp

		sub esp,0
		mov eax,123123
		jmp _method_return___STATIC_method__A__test

	_method_return___STATIC_method__A__test:
		pop ebp
		ret

