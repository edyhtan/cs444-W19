	global __class_java_util_Arrays
__class_java_util_Arrays:

section .data

		global __ref_SIT_java_util_Arrays
	__ref_SIT_java_util_Arrays		dd 0

		global __ref_PARENTS_java_util_Arrays
	__ref_PARENTS_java_util_Arrays		dd 00000000001000000001b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__java_util_Arrays__equals$char@$char@$
		dd __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

section .text

-----Methods-----
		global __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$
	__STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
		push ebp
		mov ebp, esp

				;expression code...
		;; LHS code...
		push eax
		;; RHS code...
		pop ebx
		cmp eax,ebx
		je .eq
		mov eax, 1
		.eq:
			mov eax, 0

		cmp eax,0
		je .else0
		;thenClause ...
			mov eax, 0
			jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

		jmp .endif0

		.else0:
		.endif0:
		;forInit code...
		sub esp,4
		mov eax, 0

		mov [ebp-4], eax

		.for1:
			;expression code...

			cmp eax,0
			je .endfor1
			;statement code...
			;expression code...
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp eax,ebx
			je .eq
			mov eax, 1
			.eq:
				mov eax, 0

			cmp eax,0
			je .else2
			;thenClause ...
				mov eax, 0
				jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

			jmp .endif2

			.else2:
			.endif2:



			;forUpdate code...


			jmp .for1

		.endfor1:
			add esp,4

		mov eax, 1
		jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

		_method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
			pop ebp
			ret

		global __STATIC_method__java_util_Arrays__equals$char@$char@$
	__STATIC_method__java_util_Arrays__equals$char@$char@$:
		push ebp
		mov ebp, esp

				;expression code...
		;; LHS code...
		push eax
		;; RHS code...
		pop ebx
		cmp eax,ebx
		je .eq
		mov eax, 1
		.eq:
			mov eax, 0

		cmp eax,0
		je .else3
		;thenClause ...
			mov eax, 0
			jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

		jmp .endif3

		.else3:
		.endif3:
		;forInit code...
		sub esp,4
		mov eax, 0

		mov [ebp-4], eax

		.for4:
			;expression code...

			cmp eax,0
			je .endfor4
			;statement code...
			;expression code...
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp eax,ebx
			je .eq
			mov eax, 1
			.eq:
				mov eax, 0

			cmp eax,0
			je .else5
			;thenClause ...
				mov eax, 0
				jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

			jmp .endif5

			.else5:
			.endif5:


			;forUpdate code...


			jmp .for4

		.endfor4:
			add esp,4

		mov eax, 1
		jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

		_method_return___STATIC_method__java_util_Arrays__equals$char@$char@$:
			pop ebp
			ret

;; -----Constructors-----
		extern __constructor__java_util_Arrays__Arrays
	__constructor__java_util_Arrays__Arrays:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
		mov eax, __constuctor__java_lang_Object__Object
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
