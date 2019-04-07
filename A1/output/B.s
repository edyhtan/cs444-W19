extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__A__A
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_B
__class_B:
		global __ref_SIT_B
	__ref_SIT_B:
		dd 0

		global __ref_PARENTS_B
	__ref_PARENTS_B:
		dd 011000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields

section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__B__B$int$
	__constructor__B__B$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__A__A
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: f
mov eax, 0
		mov ebx, [esp]
		add ebx, 8
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
