extern __ref_SIT_java_lang_Number
extern __malloc
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__getClass
extern __ref_SIT_java_lang_Short
extern __class_java_lang_Character
extern __ref_SIT_java_lang_Character
extern __constructor__java_lang_Integer__Integer$int$
extern __ref_SIT_java_lang_String
extern __constructor__java_lang_Character__Character$char$
extern __constructor__java_lang_Byte__Byte$byte$
extern __ref_SIT_java_lang_Integer
extern __method__java_lang_Object__toString
extern __ref_SIT_java_lang_Boolean
extern __ref_SIT_java_lang_Class
extern __ref_SIT_java_util_Arrays
extern __class_java_lang_Integer
extern __class_java_lang_Byte
extern __method__java_lang_Object__equals$java_lang_Object$
extern __constructor__java_lang_Short__Short$short$
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
extern __class_java_lang_Short
extern __ref_SIT_java_io_OutputStream


section .data

	global __class_J1_wrapper_classes_eq
__class_J1_wrapper_classes_eq:
		global __ref_SIT_J1_wrapper_classes_eq
	__ref_SIT_J1_wrapper_classes_eq:
		dd 0

		global __ref_PARENTS_J1_wrapper_classes_eq
	__ref_PARENTS_J1_wrapper_classes_eq:
		dd 1000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__J1_wrapper_classes_eq__test

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

mov ebx, __ref_SIT_J1_wrapper_classes_eq
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
		global __STATIC_method__J1_wrapper_classes_eq__test
	__STATIC_method__J1_wrapper_classes_eq__test:
		push ebp
		mov ebp, esp

				;; ---declare ri
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_java_lang_Integer
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			mov eax, 4
			push eax

		call __constructor__java_lang_Integer__Integer$int$
		add esp, 4
		pop eax


		push eax
		;; ---end of declare ri

		;; ---declare i
		;; Local Var ri
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]


		push eax
		;; ---end of declare i

		;; ---declare rc
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_java_lang_Character
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			mov eax, 39
			push eax

		call __constructor__java_lang_Character__Character$char$
		add esp, 4
		pop eax


		push eax
		;; ---end of declare rc

		;; ---declare c
		;; Local Var rc
		mov eax, ebp
		sub eax, 12
		mov eax, [eax]


		push eax
		;; ---end of declare c

		;; ---declare rs
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_java_lang_Short
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			push eax

		call __constructor__java_lang_Short__Short$short$
		add esp, 4
		pop eax


		push eax
		;; ---end of declare rs

		;; ---declare s
		;; Local Var rs
		mov eax, ebp
		sub eax, 20
		mov eax, [eax]


		push eax
		;; ---end of declare s

		;; ---declare rb
		;; Allocating size of 8
		mov eax, 8
				call __malloc
					mov ebx, __class_java_lang_Byte
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			push eax

		call __constructor__java_lang_Byte__Byte$byte$
		add esp, 4
		pop eax


		push eax
		;; ---end of declare rb

		;; ---declare b
		;; Local Var rb
		mov eax, ebp
		sub eax, 28
		mov eax, [eax]


		push eax
		;; ---end of declare b

		;; if statement0
		;expression code...
		;; logical_and
		;; logical_and
		;; logical_and
		;; ompare_eq
		;; LHS code...
		;; Local Var ri
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var i
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		je .eq3
		mov eax, 0
		jmp .end_eq3
		.eq3:
			mov eax, 1
		.end_eq3:

		cmp eax, 0
		je .end_and2
		;; ompare_eq
		;; LHS code...
		;; Local Var rc
		mov eax, ebp
		sub eax, 12
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var c
		mov eax, ebp
		sub eax, 16
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		je .eq4
		mov eax, 0
		jmp .end_eq4
		.eq4:
			mov eax, 1
		.end_eq4:

		.end_and2:

		cmp eax, 0
		je .end_and1
		;; ompare_eq
		;; LHS code...
		;; Local Var rs
		mov eax, ebp
		sub eax, 20
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var s
		mov eax, ebp
		sub eax, 24
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		je .eq5
		mov eax, 0
		jmp .end_eq5
		.eq5:
			mov eax, 1
		.end_eq5:

		.end_and1:

		cmp eax, 0
		je .end_and0
		;; ompare_eq
		;; LHS code...
		;; Local Var rb
		mov eax, ebp
		sub eax, 28
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var b
		mov eax, ebp
		sub eax, 32
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		je .eq6
		mov eax, 0
		jmp .end_eq6
		.eq6:
			mov eax, 1
		.end_eq6:

		.end_and0:

		cmp eax, 0
		je .else0
		;thenClause ...
			mov eax, 123
			jmp _method_return___STATIC_method__J1_wrapper_classes_eq__test


		jmp .endif0

		.else0:
		.endif0:
		mov eax, 42
		jmp _method_return___STATIC_method__J1_wrapper_classes_eq__test

		_method_return___STATIC_method__J1_wrapper_classes_eq__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_wrapper_classes_eq__J1_wrapper_classes_eq
	__constructor__J1_wrapper_classes_eq__J1_wrapper_classes_eq:
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
