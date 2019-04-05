	global __class_java_lang_System
__class_java_lang_System:

section .data

		global __ref_SIT_java_lang_System
	__ref_SIT_java_lang_System:		dd 0

		global __ref_PARENTS_java_lang_System
	__ref_PARENTS_java_lang_System:		dd 00000010010000000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__java_lang_System__gc
		global __field_java_lang_System_out
	__field_java_lang_System_out		dd 0


section .text

;; -----Methods-----
		global __STATIC_method__java_lang_System__gc
	__STATIC_method__java_lang_System__gc:
		push ebp
		mov ebp, esp

		
		_method_return___STATIC_method__java_lang_System__gc:
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_System__System
	__constructor__java_lang_System__System:
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
;; Field init:: out
		mov ebx, [esp]
		add ebx,0
		mov [ebx], eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
