extern __method__java_lang_Object__clone
extern __exception
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_java_util_Arrays
__class_java_util_Arrays:
		global __ref_SIT_java_util_Arrays
	__ref_SIT_java_util_Arrays:
		dd 0

		global __ref_PARENTS_java_util_Arrays
	__ref_PARENTS_java_util_Arrays:
		dd 00000100010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__java_util_Arrays__equals$char@$char@$
		dd __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

;; Static fields

section .text

;; -----Methods-----
		global __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$
	__STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
		push ebp
		mov ebp, esp

				;; if statement0
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; Local Var a1
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field length
		add eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var a2
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field length
		add eax, 4
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		jne .ne0
		mov eax, 0
		jmp .end_ne0
		.ne0:
			mov eax, 1
		.end_ne0:

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 0
			jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

		jmp .endif0

		.else0:
		.endif0:
		;forInit code...
		;; ---declare i
		mov eax, 0

		push eax
		;; ---end of declare i


		.for1:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var a1
			mov eax, ebp
			add eax, 12
			mov eax, [eax]

			cmp eax, 0
			je __exception
			;; Field length
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt1
			mov eax, 0
			jmp .end_lt1
			.lt1:
				mov eax, 1
			.end_lt1:

			cmp eax, 0
			je .endfor1
			;statement code...
			;; if statement2
			;expression code...
			;; ompare_ne
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jne .ne2
			mov eax, 0
			jmp .end_ne2
			.ne2:
				mov eax, 1
			.end_ne2:

			cmp eax, 0
			je .else2
			;thenClause ...
				mov eax, 0
				jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

			jmp .endif2

			.else2:
			.endif2:



			;forUpdate code...
							;; Local Var i
				mov eax, ebp
				sub eax, 4

			push eax
				;; Plus
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


			jmp .for1

		.endfor1:
			add esp, 4

		mov eax, 1
		jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

		_method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_util_Arrays__equals$char@$char@$
	__STATIC_method__java_util_Arrays__equals$char@$char@$:
		push ebp
		mov ebp, esp

				;; if statement3
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; Local Var a1
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field length
		add eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var a2
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field length
		add eax, 4
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		jne .ne0
		mov eax, 0
		jmp .end_ne0
		.ne0:
			mov eax, 1
		.end_ne0:

		cmp eax, 0
		je .else3
		;thenClause ...
			mov eax, 0
			jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

		jmp .endif3

		.else3:
		.endif3:
		;forInit code...
		;; ---declare i
		mov eax, 0

		push eax
		;; ---end of declare i


		.for4:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var a1
			mov eax, ebp
			add eax, 12
			mov eax, [eax]

			cmp eax, 0
			je __exception
			;; Field length
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt1
			mov eax, 0
			jmp .end_lt1
			.lt1:
				mov eax, 1
			.end_lt1:

			cmp eax, 0
			je .endfor4
			;statement code...
			;; if statement5
			;expression code...
			;; ompare_ne
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jne .ne2
			mov eax, 0
			jmp .end_ne2
			.ne2:
				mov eax, 1
			.end_ne2:

			cmp eax, 0
			je .else5
			;thenClause ...
				mov eax, 0
				jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

			jmp .endif5

			.else5:
			.endif5:


			;forUpdate code...
							;; Local Var i
				mov eax, ebp
				sub eax, 4

			push eax
				;; Plus
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 1
				pop ebx
				add ebx, eax
				mov eax, ebx

			pop ebx
			mov [ebx], eax


			jmp .for4

		.endfor4:
			add esp, 4

		mov eax, 1
		jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

		_method_return___STATIC_method__java_util_Arrays__equals$char@$char@$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_util_Arrays__Arrays
	__constructor__java_util_Arrays__Arrays:
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
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
