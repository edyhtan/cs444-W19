extern __method__java_lang_Object__clone
extern __constructor__CompB__CompB
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__CompA__compareTo$java_lang_Object$
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_CompC
__class_CompC:
		global __ref_SIT_CompC
	__ref_SIT_CompC:
		dd 0

		global __ref_PARENTS_CompC
	__ref_PARENTS_CompC:
		dd 01111000010000000000b

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
		global __method__CompC__compareTo$java_lang_Object$
	__method__CompC__compareTo$java_lang_Object$:
		push ebp
		mov ebp, esp

		mov eax, 123
		jmp _method_return___method__CompC__compareTo$java_lang_Object$

		_method_return___method__CompC__compareTo$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__CompC__CompC
	__constructor__CompC__CompC:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__CompB__CompB
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
