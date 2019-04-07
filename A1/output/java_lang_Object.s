extern __malloc
extern __class_java_lang_String
extern __new_array
extern __constructor__java_lang_String__String$char@$


section .data

	global __class_java_lang_Object
__class_java_lang_Object:
		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object:
		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object:
		dd 000000000010000000000b

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

		;; ompare_eq
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

		mov eax, 8
		call __malloc
		mov ebx, __class_java_lang_String
		mov [eax], ebx
		push eax

		mov eax, 21
		mov ebx, 0
		call __new_array
			mov ecx, 83
			mov [eax + 8], ecx
			mov ecx, 111
			mov [eax + 12], ecx
			mov ecx, 109
			mov [eax + 16], ecx
			mov ecx, 101
			mov [eax + 20], ecx
			mov ecx, 32
			mov [eax + 24], ecx
			mov ecx, 114
			mov [eax + 28], ecx
			mov ecx, 97
			mov [eax + 32], ecx
			mov ecx, 110
			mov [eax + 36], ecx
			mov ecx, 100
			mov [eax + 40], ecx
			mov ecx, 111
			mov [eax + 44], ecx
			mov ecx, 109
			mov [eax + 48], ecx
			mov ecx, 32
			mov [eax + 52], ecx
			mov ecx, 111
			mov [eax + 56], ecx
			mov ecx, 98
			mov [eax + 60], ecx
			mov ecx, 106
			mov [eax + 64], ecx
			mov ecx, 101
			mov [eax + 68], ecx
			mov ecx, 99
			mov [eax + 72], ecx
			mov ecx, 116
			mov [eax + 76], ecx
			mov ecx, 0
			mov [eax + 80], ecx
		push eax
		call __constructor__java_lang_String__String$char@$
		add esp, 8
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
