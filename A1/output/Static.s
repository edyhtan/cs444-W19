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
		dd 110000000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Static__m

;; Static fields

section .text

;; -----Methods-----
		global __method__Static__m
	__method__Static__m:
		push ebp
		mov ebp, esp

		.while0:
			;expression code...
			;; ompare_gt
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 8]
			;; Field a
			add eax, 12
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			jg .gt0
			mov eax, 0
			jmp .end_gt0
			.gt0:
				mov eax, 1
			.end_gt0:

			cmp eax, 0
			je .endwhile0
			;; while statement code...
			;; ---declare y
			mov eax, 0

			push eax
			;; ---end of declare y


							;; Implicit This
				mov eax, [ebp + 8]
				;; Field a
				add eax, 12

			push eax
				;; Local Var y
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

			pop ebx
			mov [ebx], eax


			add esp, 4

			jmp .while0

		.endwhile0:

			add esp, 4

		mov eax, 0
		jmp _method_return___method__Static__m

		_method_return___method__Static__m:
			mov esp, ebp
			pop ebp
			ret

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
			;; Assignment
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
			;; ------end assign

			;; Assignment
							;; field access
				mov eax, [ebp + 12]
				add eax, 12
			push eax
				mov eax, 70
			pop ebx
			mov [ebx], eax
			;; ------end assign

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
