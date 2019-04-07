extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_A_A
__class_A_A:
		global __ref_SIT_A_A
	__ref_SIT_A_A:
		dd 0

		global __ref_PARENTS_A_A
	__ref_PARENTS_A_A:
		dd 00001000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__A_A__instanceMethod
		dd __STATIC_method__A_A__staticMethod

;; Static fields
		global __field_A_A_staticField
	__field_A_A_staticField		dd 0


section .text

;; -----Methods-----
		global __method__A_A__instanceMethod
	__method__A_A__instanceMethod:
		push ebp
		mov ebp, esp

		
		_method_return___method__A_A__instanceMethod:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__A_A__staticMethod
	__STATIC_method__A_A__staticMethod:
		push ebp
		mov ebp, esp

		
		_method_return___STATIC_method__A_A__staticMethod:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__A_A__A
	__constructor__A_A__A:
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
;; Field init:: instanceField
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: staticField
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
