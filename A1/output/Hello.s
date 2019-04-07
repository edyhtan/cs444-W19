extern __method__java_lang_Object__clone
extern __malloc
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$

	global __class_Hello
__class_Hello:

section .data

		global __ref_SIT_Hello
	__ref_SIT_Hello:
		dd 0

		global __ref_PARENTS_Hello
	__ref_PARENTS_Hello:
		dd 00100000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Hello__like$Hello$
		dd __method__Hello__k
		dd __method__Hello__whatYouSee

;; Static fields
		global __field_Hello_staticInt
	__field_Hello_staticInt		dd 0


section .text

;; -----Methods-----
		global __method__Hello__whatYouSee
	__method__Hello__whatYouSee:
		push ebp
		mov ebp, esp

		
		_method_return___method__Hello__whatYouSee:
			mov esp, ebp
			pop ebp
			ret

		global __method__Hello__like$Hello$
	__method__Hello__like$Hello$:
		push ebp
		mov ebp, esp

				;; Method Invocation:
		;; o.code
		;; Pushing args
			push eax

		call __method__Hello__like$Hello$

		add esp, 8
		jmp _method_return___method__Hello__like$Hello$

		_method_return___method__Hello__like$Hello$:
			mov esp, ebp
			pop ebp
			ret

		global __method__Hello__k
	__method__Hello__k:
		push ebp
		mov ebp, esp

				jmp _method_return___method__Hello__k

		_method_return___method__Hello__k:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__Hello__Hello
	__constructor__Hello__Hello:
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
;; Field init:: k
				mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: staticInt
				mov eax, 0
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
			;; Allocating size of 8
			mov eax, 8
						call __malloc
							mov ebx, __class_Hello
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
			call __constructor__Hello__Hello
			add esp, 0
			pop eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__Hello__Hello$int$
	__constructor__Hello__Hello$int$:
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
;; Field init:: k
				mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: staticInt
				mov eax, 0
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
