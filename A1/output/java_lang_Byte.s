add ebx, 4
add ebx, 0
add esp, 4
add ebx, 4
add ebx, 0
add esp, 4

	global __class_java_lang_Byte
__class_java_lang_Byte:

section .data

		global __ref_SIT_java_lang_Byte
	__ref_SIT_java_lang_Byte		dd 0

		global __ref_PARENTS_java_lang_Byte
	__ref_PARENTS_java_lang_Byte		dd 00000000001001000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		global __field_java_lang_Byte_MAX_VALUE
	__field_java_lang_Byte_MAX_VALUE		dd 0


section .text

-----Methods-----
		global __method__java_lang_Byte__toString
	__method__java_lang_Byte__toString:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_Byte__toString

		_method_return___method__java_lang_Byte__toString:
			pop ebp
			ret

;; -----Constructors-----
			__constructor__java_lang_Byte__Byte$byte$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
		mov eax, __constuctor__java_lang_Object__Object
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init:: MAX_VALUE
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
			__constructor__java_lang_Byte__Byte:
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
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
				mov [ebx], eax
;; Field init:: MAX_VALUE
		mov ebx, [esp]
				mov [ebx], eax
;; Field init end, pop object
		;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
