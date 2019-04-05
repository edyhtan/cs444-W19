extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$

	global __class_java_lang_Class
__class_java_lang_Class:

section .data

		global __ref_SIT_java_lang_Class
	__ref_SIT_java_lang_Class:
		dd 0

		global __ref_PARENTS_java_lang_Class
	__ref_PARENTS_java_lang_Class:
		dd 00000000001100000000b

	; Methods	
																	dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__java_lang_Class__Class
	__constructor__java_lang_Class__Class:
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
