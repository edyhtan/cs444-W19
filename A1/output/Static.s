extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__Main__Main


section .data

	global __class_Static
__class_Static:
		global __ref_SIT_Static
	__ref_SIT_Static:
		dd 0

		global __ref_PARENTS_Static
	__ref_PARENTS_Static:
		dd 011000000001000000000b

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
		global __constructor__Static__Static
	__constructor__Static__Static:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__Main__Main
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: a
				mov eax, 4
		mov ebx, [esp]
		add ebx, 12
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__Static__Static$int$
	__constructor__Static__Static$int$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__Main__Main
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: a
				mov eax, 4
		mov ebx, [esp]
		add ebx, 12
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
							;; Implicit This
				mov eax, [ebp + 12]
				;; Field a
				add eax, 12

			push eax
				;; Local Var x
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

							;; field access
				mov eax, [ebp + 12]
				add eax, 12
			push eax
				mov eax, 70
			pop ebx
			mov [ebx], eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
