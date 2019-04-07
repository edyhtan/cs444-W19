extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_pac_Foo
__class_pac_Foo:
		global __ref_SIT_pac_Foo
	__ref_SIT_pac_Foo:
		dd 0

		global __ref_PARENTS_pac_Foo
	__ref_PARENTS_pac_Foo:
		dd 10000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__pac_Foo__bar

;; Static fields

section .text

;; -----Methods-----
		global __STATIC_method__pac_Foo__bar
	__STATIC_method__pac_Foo__bar:
		push ebp
		mov ebp, esp

				mov eax, 123
		jmp _method_return___STATIC_method__pac_Foo__bar

		_method_return___STATIC_method__pac_Foo__bar:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__pac_Foo__Foo
	__constructor__pac_Foo__Foo:
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
