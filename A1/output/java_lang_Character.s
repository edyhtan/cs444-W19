extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __STATIC_method__java_lang_String__valueOf$char$
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_java_lang_Character
__class_java_lang_Character:
		global __ref_SIT_java_lang_Character
	__ref_SIT_java_lang_Character:
		dd 0

		global __ref_PARENTS_java_lang_Character
	__ref_PARENTS_java_lang_Character:
		dd 0000010000100000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields

section .text

;; -----Methods-----
		global __method__java_lang_Character__toString
	__method__java_lang_Character__toString:
		push ebp
		mov ebp, esp

				;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field value
			add eax, 4
			mov eax, [eax]

			push eax

		call __STATIC_method__java_lang_String__valueOf$char$

		add esp, 8
		jmp _method_return___method__java_lang_Character__toString

		_method_return___method__java_lang_Character__toString:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Character__Character$char$
	__constructor__java_lang_Character__Character$char$:
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
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
							;; Implicit This
				mov eax, [ebp + 12]
				;; Field value
				add eax, 4

			push eax
				;; Local Var i
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_Character__Character
	__constructor__java_lang_Character__Character:
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
;; Field init:: value
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
