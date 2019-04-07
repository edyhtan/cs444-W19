extern __method__java_lang_Object__clone
extern __malloc
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __class_Hello
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__Hello__Hello$int$

	global __class_Main
__class_Main:

section .data

		global __ref_SIT_Main
	__ref_SIT_Main:
		dd 0

		global __ref_PARENTS_Main
	__ref_PARENTS_Main:
		dd 001000000001000000000b

	; Methods	
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

				;; Allocating size of 1
		mov eax, 1
				call __malloc
					mov ebx, __class_Hello
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			mov eax, 233

			
					call __constructor__Hello__Hello$int$
		add esp, 4
		pop eax

		_method_return___method__Main__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__Main__Main
	__constructor__Main__Main:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: h
				mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
