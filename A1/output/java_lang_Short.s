	global __class_java_lang_Short
__class_java_lang_Short:

section .data

		global __ref_SIT_java_lang_Short
	__ref_SIT_java_lang_Short:		dd 0

		global __ref_PARENTS_java_lang_Short
	__ref_PARENTS_java_lang_Short:		dd 00000001001010000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
			extern __method__java_lang_Number__intValue
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_lang_Number__intValue

section .text

;; -----Methods-----
		global __method__java_lang_Short__intValue
	__method__java_lang_Short__intValue:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_Short__intValue

		_method_return___method__java_lang_Short__intValue:
			pop ebp
			ret

		global __method__java_lang_Short__toString
	__method__java_lang_Short__toString:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_Short__toString

		_method_return___method__java_lang_Short__toString:
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Short__Short$short$
	__constructor__java_lang_Short__Short$short$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
			extern __constructor__java_lang_Number__Number
		mov eax, __constructor__java_lang_Number__Number
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx,4
		mov [ebx], eax
;; Field init end, pop object
		add esp,4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_Short__Short
	__constructor__java_lang_Short__Short:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__java_lang_Number__Number
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx,4
		mov [ebx], eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
