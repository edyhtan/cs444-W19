extern __ref_SIT_java_lang_Number
extern __exception
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_java_lang_Short
extern __ref_SIT_java_lang_Character
extern __ref_SIT_java_lang_String
extern __ref_SIT_java_lang_Integer
extern __method__java_lang_Object__toString
extern __ref_SIT_java_lang_Boolean
extern __ref_SIT_java_lang_Class
extern __ref_SIT_java_util_Arrays
extern __method__java_lang_Object__equals$java_lang_Object$
extern __ref_SIT_java_io_PrintStream
extern __method__java_lang_Object__clone
extern __field_java_lang_Boolean_MAX_VALUE
extern __ref_SIT_java_lang_Object
extern __method__java_lang_Object__hashCode
extern __ref_SIT_java_lang_Byte
extern __field_java_lang_System_out
extern __field_java_lang_Byte_MAX_VALUE
extern __ref_SIT_java_lang_System
extern __field_java_lang_Integer_MAX_VALUE
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_J1_sideeffects_obj3
__class_J1_sideeffects_obj3:
		global __ref_SIT_J1_sideeffects_obj3
	__ref_SIT_J1_sideeffects_obj3:
		dd 0

		global __ref_PARENTS_J1_sideeffects_obj3
	__ref_PARENTS_J1_sideeffects_obj3:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__J1_sideeffects_obj3__bar
		dd __STATIC_method__J1_sideeffects_obj3__test
		dd __method__J1_sideeffects_obj3__foo

;; Static fields

section .text

;; -----Methods-----
	global _start
_start:

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_io_OutputStream
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_io_PrintStream
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Boolean
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Byte
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Character
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Class
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Integer
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Number
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Object
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_Short
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_String
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_lang_System
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_java_util_Arrays
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
call __malloc

mov ebx, __ref_SIT_J1_sideeffects_obj3
mov [ebx], eax

		mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

		mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

		mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

		mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

;; Static Field: __field_java_lang_Boolean_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Boolean_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Byte_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Byte_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_Integer_MAX_VALUE
mov eax, 3
mov ebx, __field_java_lang_Integer_MAX_VALUE
mov [ebx], eax

;; Static Field: __field_java_lang_System_out
mov eax, 3
mov ebx, __field_java_lang_System_out
mov [ebx], eax

call @@@@main
mov ebx, eax
mov eax, 1
int 0x80


global @@@@main
@@@@main:
		global __STATIC_method__J1_sideeffects_obj3__test
	__STATIC_method__J1_sideeffects_obj3__test:
		push ebp
		mov ebp, esp

		;; ---declare tmp
		mov eax, 0

		push eax
		;; ---end of declare tmp

		;; ---declare obj
		;; ---new [J1_sideeffects_obj3] ()
		;; Allocating size of 12
		mov eax, 12
				call __malloc
					mov ebx, __class_J1_sideeffects_obj3
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			mov eax, 1
			push eax

							;; Local Var tmp
				mov eax, ebp
				sub eax, 4

			push eax
				;; ---new [J1_sideeffects_obj3] ()
				;; Allocating size of 12
				mov eax, 12
								call __malloc
									mov ebx, __class_J1_sideeffects_obj3
				mov [eax], ebx

				;; Pushing object
				push eax

				;; Pushing args:
					mov eax, 2
					push eax

					;; casting
										mov eax, 0
					cmp eax, 0
					je .cast_end
					mov eax, [eax]
					mov eax, [eax+4]
					shr eax, 15
					and eax, 0x1
					cmp eax, 0
					je __exception
					.cast_end:
					push eax

				call __constructor__J1_sideeffects_obj3__J1_sideeffects_obj3$int$J1_sideeffects_obj3$
				add esp, 8
				pop eax

				;; ---end of new [J1_sideeffects_obj3] ()
			pop ebx
			mov [ebx], eax

			push eax

		call __constructor__J1_sideeffects_obj3__J1_sideeffects_obj3$int$J1_sideeffects_obj3$
		add esp, 8
		pop eax

		;; ---end of new [J1_sideeffects_obj3] ()

		push eax
		;; ---end of declare obj

					;; field access
			;; ---Method Invocation: 
			;; Names(ArgList)
				;; Local Var obj
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
			push eax

			;; Pushing args
			;; class method:
			;; addr of o
			mov eax, [esp + 0]
			;; vtable
			mov eax, [eax]
			;; addr of m body
			mov eax, [eax + 36]

			call eax

			;; pop arguments
			add esp, 4

			;; ---End of method invocation
			add eax, 4
		push eax
			;; ---Method Invocation: 
			;; Names(ArgList)
				;; Local Var obj
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

			cmp eax, 0
			je __exception
			;; non-static, pushing reference
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
		pop ebx
		mov [ebx], eax

		;; Plus
		;; LHS code...
		;; Plus
		;; LHS code...
		;; Mult
		;; LHS code...
		mov eax, 4
		push eax
		;; RHS code...
		;; Local Var tmp
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field a
		add eax, 4
		mov eax, [eax]

		pop ebx
		imul ebx, eax
		mov eax, ebx

		push eax
		;; RHS code...
		;; Mult
		;; LHS code...
		mov eax, 5
		push eax
		;; RHS code...
		;; Local Var obj
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field a
		add eax, 4
		mov eax, [eax]

		pop ebx
		imul ebx, eax
		mov eax, ebx

		pop ebx
		add ebx, eax
		mov eax, ebx

		push eax
		;; RHS code...
		;; Local Var obj
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field subject
		add eax, 8
		mov eax, [eax]

		cmp eax, 0
		je __exception
		;; Field a
		add eax, 4
		mov eax, [eax]

		pop ebx
		add ebx, eax
		mov eax, ebx

		jmp _method_return___STATIC_method__J1_sideeffects_obj3__test

		_method_return___STATIC_method__J1_sideeffects_obj3__test:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_sideeffects_obj3__foo
	__method__J1_sideeffects_obj3__foo:
		push ebp
		mov ebp, esp

					;; Implicit This
			mov eax, [ebp + 0]
			;; Field a
			add eax, 4

		push eax
			;; Plus
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field a
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 2
			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax

		;; Implicit This
		mov eax, [ebp + 0]
		;; Field subject
		add eax, 8
		mov eax, [eax]

		jmp _method_return___method__J1_sideeffects_obj3__foo

		_method_return___method__J1_sideeffects_obj3__foo:
			mov esp, ebp
			pop ebp
			ret

		global __method__J1_sideeffects_obj3__bar
	__method__J1_sideeffects_obj3__bar:
		push ebp
		mov ebp, esp

					;; Implicit This
			mov eax, [ebp + 0]
			;; Field subject
			add eax, 8

		push eax
			;; ---new [J1_sideeffects_obj3] ()
			;; Allocating size of 12
			mov eax, 12
						call __malloc
							mov ebx, __class_J1_sideeffects_obj3
			mov [eax], ebx

			;; Pushing object
			push eax

			;; Pushing args:
				;; Plus
				;; LHS code...
				;; Implicit This
				mov eax, [ebp + 0]
				;; Field a
				add eax, 4
				mov eax, [eax]

				push eax
				;; RHS code...
				;; Mult
				;; LHS code...
				mov eax, 10
				push eax
				;; RHS code...
				;; Implicit This
				mov eax, [ebp + 0]
				;; Field subject
				add eax, 8
				mov eax, [eax]

				cmp eax, 0
				je __exception
				;; Field a
				add eax, 4
				mov eax, [eax]

				pop ebx
				imul ebx, eax
				mov eax, ebx

				pop ebx
				add ebx, eax
				mov eax, ebx

				push eax

				;; casting
								mov eax, 0
				cmp eax, 0
				je .cast_end
				mov eax, [eax]
				mov eax, [eax+4]
				shr eax, 15
				and eax, 0x1
				cmp eax, 0
				je __exception
				.cast_end:
				push eax

			call __constructor__J1_sideeffects_obj3__J1_sideeffects_obj3$int$J1_sideeffects_obj3$
			add esp, 8
			pop eax

			;; ---end of new [J1_sideeffects_obj3] ()
		pop ebx
		mov [ebx], eax

					;; Implicit This
			mov eax, [ebp + 0]
			;; Field a
			add eax, 4

		push eax
			;; Plus
			;; LHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field a
			add eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 5
			pop ebx
			add ebx, eax
			mov eax, ebx

		pop ebx
		mov [ebx], eax

		;; Plus
		;; LHS code...
		;; Implicit This
		mov eax, [ebp + 0]
		;; Field a
		add eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 7
		pop ebx
		add ebx, eax
		mov eax, ebx

		jmp _method_return___method__J1_sideeffects_obj3__bar

		_method_return___method__J1_sideeffects_obj3__bar:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_sideeffects_obj3__J1_sideeffects_obj3$int$J1_sideeffects_obj3$
	__constructor__J1_sideeffects_obj3__J1_sideeffects_obj3$int$J1_sideeffects_obj3$:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 16]
		push eax
					mov eax, __constructor__java_lang_Object__Object
		call eax
		sub esp, 4
;; Field init, push object to stack
		mov eax, [ebp + 16]
		push eax
;; Field init:: subject
				mov eax, 0
		mov ebx, [esp]
		add ebx, 8
		mov [ebx], eax
;; Field init:: a
				mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
							;; field access
				mov eax, [ebp + 16]
				add eax, 4
			push eax
				;; Local Var a
				mov eax, ebp
				add eax, 12
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

							;; Implicit This
				mov eax, [ebp + 16]
				;; Field subject
				add eax, 8

			push eax
				;; Local Var s
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

			pop ebx
			mov [ebx], eax

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
