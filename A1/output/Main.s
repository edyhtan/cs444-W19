	global __class_Main
__class_Main:
section .data

		global __ref_SIT_Main
	__ref_SIT_Main		dd 0

		global __ref_PARENTS_Main
	__ref_PARENTS_Main		dd 0

section .text

		global __method__Main__test
	__method__Main__test:
		push ebp
		mov ebp,esp

		sub esp,0

	_method_return___method__Main__test:
		pop ebp
		ret

