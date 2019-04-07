extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__CompA__compareTo$java_lang_Object$
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__CompA__CompA


section .data

	global __class_CompB
__class_CompB:
		global __ref_SIT_CompB
	__ref_SIT_CompB:
		dd 0

		global __ref_PARENTS_CompB
	__ref_PARENTS_CompB:
		dd 01011000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__CompA__compareTo$java_lang_Object$

;; Static fields

section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__CompB__CompB
	__constructor__CompB__CompB:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__CompA__CompA
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
