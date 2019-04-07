extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_Bar
__class_Bar:
		global __ref_SIT_Bar
	__ref_SIT_Bar:
		dd 0

		global __ref_PARENTS_Bar
	__ref_PARENTS_Bar:
		dd 0001000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__Bar__method

;; Static fields

section .text

;; -----Methods-----
		global __method__Bar__method
	__method__Bar__method:
		push ebp
		mov ebp, esp

				mov eax, 42
		jmp _method_return___method__Bar__method

		_method_return___method__Bar__method:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__Bar__Bar
	__constructor__Bar__Bar:
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
