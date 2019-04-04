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
		global __method_A__STATIC_test
	__method_A__STATIC_test:
		push ebp
		mov ebp,esp
		mov eax,123123
		jmp _method_return___method_A__STATIC_test

	_method_return___method_A__STATIC_test:
		pop ebp
		ret

