extern __method__java_lang_Object__clone
extern __malloc
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_java_util_LinkedList
__class_java_util_LinkedList:
		global __ref_SIT_java_util_LinkedList
	__ref_SIT_java_util_LinkedList:
		dd 0

		global __ref_PARENTS_java_util_LinkedList
	__ref_PARENTS_java_util_LinkedList:
		dd 0111000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_util_LinkedList__size
		dd __method__java_util_LinkedList__add$java_lang_Object$

;; Static fields

section .text

;; -----Methods-----
		global __method__java_util_LinkedList__size
	__method__java_util_LinkedList__size:
		push ebp
		mov ebp, esp

				;; if statement0
		;expression code...
		;; Implicit This
		mov eax, [ebp + 0]
		;; Field empty
		add eax, 12
		mov eax, [eax]

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 0
			jmp _method_return___method__java_util_LinkedList__size

		jmp .endif0

		.else0:
			;elseClause ...
			;; if statement1
			;expression code...
			;; ompare_eq
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field next
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			je .eq0
			mov eax, 0
			jmp .end_eq0
			.eq0:
				mov eax, 1
			.end_eq0:

			cmp eax, 0
			je .else1
			;thenClause ...
				mov eax, 1
				jmp _method_return___method__java_util_LinkedList__size

			jmp .endif1

			.else1:
				;elseClause ...
				;; Plus
				;; LHS code...
				mov eax, 1
				push eax
				;; RHS code...
				;; Method Invocation:
				;; o.code
				;; Pushing args
				call __method__java_util_LinkedList__size

				add esp, 4
				pop ebx
				add ebx, eax
				mov eax, ebx

				jmp _method_return___method__java_util_LinkedList__size

			.endif1:

		.endif0:

		_method_return___method__java_util_LinkedList__size:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_util_LinkedList__add$java_lang_Object$
	__method__java_util_LinkedList__add$java_lang_Object$:
		push ebp
		mov ebp, esp

				;; if statement2
		;expression code...
		;; Implicit This
		mov eax, [ebp + 0]
		;; Field empty
		add eax, 12
		mov eax, [eax]

		cmp eax, 0
		je .else2
		;thenClause ...





		jmp .endif2

		.else2:
			;elseClause ...
			;; if statement3
			;expression code...
			;; ompare_eq
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field next
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			je .eq0
			mov eax, 0
			jmp .end_eq0
			.eq0:
				mov eax, 1
			.end_eq0:

			cmp eax, 0
			je .else3
			;thenClause ...



			jmp .endif3

			.else3:
			.endif3:

			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var o
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __method__java_util_LinkedList__add$java_lang_Object$

			add esp, 8


		.endif2:
		mov eax, 1
		jmp _method_return___method__java_util_LinkedList__add$java_lang_Object$

		_method_return___method__java_util_LinkedList__add$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_util_LinkedList__clone
	__method__java_util_LinkedList__clone:
		push ebp
		mov ebp, esp

				;; ---declare ret
		;; Allocating size of 16
		mov eax, 16
				call __malloc
					mov ebx, __class_java_util_LinkedList
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
		call __constructor__java_util_LinkedList__LinkedList
		add esp, 0
		pop eax


		push eax
		;; ---end of declare ret

		;; if statement4
		;expression code...
		;; ompare_ne
		;; LHS code...
		;; Implicit This
		mov eax, [ebp + 0]
		;; Field next
		add eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		jne .ne0
		mov eax, 0
		jmp .end_ne0
		.ne0:
			mov eax, 1
		.end_ne0:

		cmp eax, 0
		je .else4
		;thenClause ...


		jmp .endif4

		.else4:
		.endif4:


		;; Local Var ret
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___method__java_util_LinkedList__clone

		_method_return___method__java_util_LinkedList__clone:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_util_LinkedList__LinkedList
	__constructor__java_util_LinkedList__LinkedList:
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
;; Field init:: empty
				mov eax, 1
		mov ebx, [esp]
		add ebx, 12
		mov [ebx], eax
;; Field init:: cur
				mov eax, 0
		mov ebx, [esp]
		add ebx, 8
		mov [ebx], eax
;; Field init:: next
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
