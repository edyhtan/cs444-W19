extern __method__java_lang_Object__clone
extern __exception
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_J1_evalMethodInvocation
__class_J1_evalMethodInvocation:
		global __ref_SIT_J1_evalMethodInvocation
	__ref_SIT_J1_evalMethodInvocation:
		dd 0

		global __ref_PARENTS_J1_evalMethodInvocation
	__ref_PARENTS_J1_evalMethodInvocation:
		dd 01000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__J1_evalMethodInvocation__bar
		dd __method__J1_evalMethodInvocation__foo

;; Static fields

section .text

;; -----Methods-----
		global __method__J1_evalMethodInvocation__foo
	__method__J1_evalMethodInvocation__foo:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Primary.id(ArgList)
			mov eax, [ebp + 8]
		cmp eax, 0
		je __exception
		push eax

		;; Pushing args
		;; class method:
		;; addr of o
		mov eax, [esp + 0]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 28]

		call eax

		;; pop arguments
		add esp, 4

		;; ---End of method invocation
		jmp _method_return___method__J1_evalMethodInvocation__foo

		_method_return___method__J1_evalMethodInvocation__foo:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_evalMethodInvocation__bar
	__method__J1_evalMethodInvocation__bar:
		push ebp
		mov ebp, esp

		mov eax, 123
		jmp _method_return___method__J1_evalMethodInvocation__bar

		_method_return___method__J1_evalMethodInvocation__bar:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_evalMethodInvocation__J1_evalMethodInvocation
	__constructor__J1_evalMethodInvocation__J1_evalMethodInvocation:
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
