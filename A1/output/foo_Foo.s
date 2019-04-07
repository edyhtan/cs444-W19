extern __exception
extern __malloc
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern __method__java_lang_Object__clone
extern __method__java_lang_Object__hashCode
extern __field_java_lang_System_out


section .data

	global __class_foo_Foo
__class_foo_Foo:
		global __ref_SIT_foo_Foo
	__ref_SIT_foo_Foo:
		dd 0

		global __ref_PARENTS_foo_Foo
	__ref_PARENTS_foo_Foo:
		dd 01000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__foo_Foo__bar
		dd __method__foo_Foo__test
		dd __STATIC_method__foo_Foo__main$java_lang_String@$

;; Static fields

section .text

;; -----Methods-----
		global __STATIC_method__foo_Foo__bar
	__STATIC_method__foo_Foo__bar:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Names(ArgList)

			mov eax, __field_java_lang_System_out
			mov eax, [eax]

		cmp eax, 0
		je __exception
		;; non-static, pushing reference
		push eax

		;; Pushing args
						push eax

		;; class method:
		;; addr of o
		mov eax, [esp + 4]
		;; vtable
		mov eax, [eax]
		;; addr of m body
		mov eax, [eax + 80]

		call eax

		;; pop arguments
		add esp, 8

		;; ---End of method invocation

		_method_return___STATIC_method__foo_Foo__bar:
			mov esp, ebp
			pop ebp
			ret

		global __method__foo_Foo__test
	__method__foo_Foo__test:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Names(ArgList)

		;; static method, dont push this

		;; Pushing args
		;; static method:
		call __STATIC_method__foo_Foo__bar

		add esp, 0

		;; ---End of method invocation

		_method_return___method__foo_Foo__test:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__foo_Foo__main$java_lang_String@$
	__STATIC_method__foo_Foo__main$java_lang_String@$:
		push ebp
		mov ebp, esp

		;; ---Method Invocation: 
		;; Primary.id(ArgList)
			;; ---new [foo, Foo] ()
			;; Allocating size of 4
			mov eax, 4
						call __malloc
							mov ebx, __class_foo_Foo
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
			call __constructor__foo_Foo__Foo
			add esp, 0
			pop eax

			;; ---end of new [foo, Foo] ()
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
		mov eax, [eax + 32]

		call eax

		;; pop arguments
		add esp, 4

		;; ---End of method invocation

		_method_return___STATIC_method__foo_Foo__main$java_lang_String@$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__foo_Foo__Foo
	__constructor__foo_Foo__Foo:
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
