extern __method__java_lang_Object__clone
extern __STATIC_method__A_A__staticMethod
extern __method__java_lang_Object__toString
extern __method__C_C__staticFieldAccessFromThisClass$int$
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __constructor__C_C__C
extern __method__java_lang_Object__equals$java_lang_Object$
extern __method__A_A__instanceMethod


section .data

	global __class_D_D
__class_D_D:
		global __ref_SIT_D_D
	__ref_SIT_D_D:
		dd 0

		global __ref_PARENTS_D_D
	__ref_PARENTS_D_D:
		dd 01111000010000000000b

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
;; -----Constructors-----
		global __constructor__D_D__D
	__constructor__D_D__D:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__C_C__C
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
