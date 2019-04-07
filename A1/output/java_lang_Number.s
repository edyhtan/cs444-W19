extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_java_lang_Number
__class_java_lang_Number:
		global __ref_SIT_java_lang_Number
	__ref_SIT_java_lang_Number:
		dd 0

		global __ref_PARENTS_java_lang_Number
	__ref_PARENTS_java_lang_Number:
		dd 00000000011000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_lang_Number__intValue

;; Static fields

section .text

;; -----Methods-----
		global __method__java_lang_Number__intValue
	__method__java_lang_Number__intValue:
		push ebp
		mov ebp, esp


		_method_return___method__java_lang_Number__intValue:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Number__Number
	__constructor__java_lang_Number__Number:
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
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
