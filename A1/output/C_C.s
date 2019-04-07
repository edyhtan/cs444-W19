extern __method__java_lang_Object__clone
extern __STATIC_method__A_A__staticMethod
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__B_B__B
extern __method__A_A__instanceMethod


section .data

	global __class_C_C
__class_C_C:
		global __ref_SIT_C_C
	__ref_SIT_C_C:
		dd 0

		global __ref_PARENTS_C_C
	__ref_PARENTS_C_C:
		dd 00111000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__A_A__instanceMethod
		dd __STATIC_method__A_A__staticMethod
		dd __method__C_C__staticFieldAccessFromThisClass$int$

;; Static fields

section .text

;; -----Methods-----
		global __method__C_C__staticFieldAccessFromThisClass$int$
	__method__C_C__staticFieldAccessFromThisClass$int$:
		push ebp
		mov ebp, esp

		

		_method_return___method__C_C__staticFieldAccessFromThisClass$int$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__C_C__C
	__constructor__C_C__C:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__B_B__B
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
