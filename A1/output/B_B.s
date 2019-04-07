extern __method__java_lang_Object__clone
extern __STATIC_method__A_A__staticMethod
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __method__A_A__instanceMethod
extern __constructor__A_A__A


section .data

	global __class_B_B
__class_B_B:
		global __ref_SIT_B_B
	__ref_SIT_B_B:
		dd 0

		global __ref_PARENTS_B_B
	__ref_PARENTS_B_B:
		dd 00011000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__A_A__instanceMethod
		dd __STATIC_method__A_A__staticMethod

;; Static fields

section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__B_B__B
	__constructor__B_B__B:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__A_A__A
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
		global __constructor__B_B__B$int$
	__constructor__B_B__B$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__A_A__A
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
