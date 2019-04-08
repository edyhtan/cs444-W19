

section .data

	global __class_java_lang_Object
__class_java_lang_Object:
		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object:
		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object:
		dd 0000001000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields

section .text

;; -----Methods-----
		global __method__java_lang_Object__equals$java_lang_Object$
	__method__java_lang_Object__equals$java_lang_Object$:
		push ebp
		mov ebp, esp

		;; Compare_eq
		;; LHS code...
		mov eax, [ebp + 12]
		push eax
		;; RHS code...
		;; Local Var other
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		jmp _method_return___method__java_lang_Object__equals$java_lang_Object$

		_method_return___method__java_lang_Object__equals$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_Object__toString
	__method__java_lang_Object__toString:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_Object__toString

		_method_return___method__java_lang_Object__toString:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_Object__hashCode
	__method__java_lang_Object__hashCode:
		push ebp
		mov ebp, esp

		mov eax, 42
		jmp _method_return___method__java_lang_Object__hashCode

		_method_return___method__java_lang_Object__hashCode:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_Object__clone
	__method__java_lang_Object__clone:
		push ebp
		mov ebp, esp

		mov eax, [ebp + 8]
		jmp _method_return___method__java_lang_Object__clone

		_method_return___method__java_lang_Object__clone:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_Object__getClass
	__method__java_lang_Object__getClass:
		push ebp
		mov ebp, esp

		mov eax, 0
		jmp _method_return___method__java_lang_Object__getClass

		_method_return___method__java_lang_Object__getClass:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Object__Object
	__constructor__java_lang_Object__Object:
		push ebp
		mov ebp, esp
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
