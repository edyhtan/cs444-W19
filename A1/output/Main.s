	global __class_Main
__class_Main:

section .data

		global __ref_SIT_Main
	__ref_SIT_Main:
		dd 0

		global __ref_PARENTS_Main
	__ref_PARENTS_Main:
		dd 01000000010000000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Main__test

section .text

;; -----Methods-----
		global __method__Main__test
	__method__Main__test:
		push ebp
		mov ebp, esp

		
		_method_return___method__Main__test:
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__Main__Main
	__constructor__Main__Main:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
			extern __constructor__java_lang_Object__Object
		mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
