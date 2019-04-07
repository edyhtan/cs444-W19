extern __constructor__java_lang_Object__Object

	global __class_foo_bar
__class_foo_bar:

section .data

		global __ref_SIT_foo_bar
	__ref_SIT_foo_bar:
		dd 0

		global __ref_PARENTS_foo_bar
	__ref_PARENTS_foo_bar:
		dd 00010000001000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields

section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__foo_bar__bar
	__constructor__foo_bar__bar:
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
