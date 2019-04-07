extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_A
__class_A:
		global __ref_SIT_A
	__ref_SIT_A:
		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A:
		dd 001000010000000000b

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
		global __constructor__A__A
	__constructor__A__A:
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
;; Field init:: f
				mov eax, 123
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
		global __constructor__A__A$int$
	__constructor__A__A$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: f
				mov eax, 123
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
							;; field access
				mov eax, [ebp + 12]
				add eax, 4
			push eax
				;; Local Var f
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
