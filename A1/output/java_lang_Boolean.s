extern __STATIC_method__java_lang_String__valueOf$boolean$
extern __constructor__java_lang_Object__Object

	global __class_java_lang_Boolean
__class_java_lang_Boolean:

section .data

		global __ref_SIT_java_lang_Boolean
	__ref_SIT_java_lang_Boolean:
		dd 0

		global __ref_PARENTS_java_lang_Boolean
	__ref_PARENTS_java_lang_Boolean:
		dd 00000000010000001000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields
		global __field_java_lang_Boolean_MAX_VALUE
	__field_java_lang_Boolean_MAX_VALUE		dd 0


section .text

;; -----Methods-----
		global __method__java_lang_Boolean__toString
	__method__java_lang_Boolean__toString:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field value
			add eax, 4
			mov eax, [eax]

			push eax

		call __STATIC_method__java_lang_String__valueOf$boolean$

		add esp, 8
		jmp _method_return___method__java_lang_Boolean__toString

		_method_return___method__java_lang_Boolean__toString:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_Boolean__Boolean$boolean$
	__constructor__java_lang_Boolean__Boolean$boolean$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 12]
		push eax
					mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 12]
		push eax
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: MAX_VALUE
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
		global __constructor__java_lang_Boolean__Boolean
	__constructor__java_lang_Boolean__Boolean:
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
;; Field init:: value
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init:: MAX_VALUE
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
