extern __method__java_lang_Object__clone
extern __STATIC_method__java_io_OutputStream__nativeWrite$int$
extern __method__java_lang_Object__toString
extern __constructor__java_io_OutputStream__OutputStream
extern __method__java_lang_Object__hashCode
extern __method__java_io_OutputStream__write$int$
extern __method__java_io_OutputStream__write$char$
extern __method__java_lang_Object__getClass
extern __method__java_io_OutputStream__flush
extern __method__java_lang_Object__equals$java_lang_Object$

	global __class_java_io_PrintStream
__class_java_io_PrintStream:

section .data

		global __ref_SIT_java_io_PrintStream
	__ref_SIT_java_io_PrintStream:
		dd 0

		global __ref_PARENTS_java_io_PrintStream
	__ref_PARENTS_java_io_PrintStream:
		dd 00000000001000001010b

	; Methods	
																													dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __method__java_io_OutputStream__flush
		dd __STATIC_method__java_io_OutputStream__nativeWrite$int$
		dd __method__java_io_OutputStream__write$int$
		dd __method__java_io_OutputStream__write$char$
		dd __method__java_io_PrintStream__print$int$
		dd __method__java_io_PrintStream__println$boolean$
		dd __method__java_io_PrintStream__println$char$
		dd __method__java_io_PrintStream__print$java_lang_String$
		dd __method__java_io_PrintStream__println$int$
		dd __method__java_io_PrintStream__print$char$
		dd __method__java_io_PrintStream__println$java_lang_Object$
		dd __method__java_io_PrintStream__println$byte$
		dd __method__java_io_PrintStream__println$short$
		dd __method__java_io_PrintStream__println$java_lang_String$
		dd __method__java_io_PrintStream__println
		dd __method__java_io_PrintStream__print$boolean$
		dd __method__java_io_PrintStream__print$byte$
		dd __method__java_io_PrintStream__print$java_lang_Object$
		dd __method__java_io_PrintStream__print$short$

section .text

;; -----Methods-----
		global __method__java_io_PrintStream__print$java_lang_String$
	__method__java_io_PrintStream__print$java_lang_String$:
		push ebp
		mov ebp, esp

				;forInit code...
		;; ---declare i
		mov eax, 0
		push eax


		.for0:
			;expression code...
			;; compare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jl .lt0
			mov eax, 0
			jmp .end_lt0
			.lt0:
				mov eax, 1
			.end_lt0:

			cmp eax, 0
			je .endfor0
			;statement code...



			;forUpdate code...


			jmp .for0

		.endfor0:
			add esp, 4


		_method_return___method__java_io_PrintStream__print$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println
	__method__java_io_PrintStream__println:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$java_lang_String$
	__method__java_io_PrintStream__println$java_lang_String$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$java_lang_Object$
	__method__java_io_PrintStream__println$java_lang_Object$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$boolean$
	__method__java_io_PrintStream__println$boolean$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$boolean$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$byte$
	__method__java_io_PrintStream__println$byte$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$byte$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$char$
	__method__java_io_PrintStream__println$char$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$char$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$short$
	__method__java_io_PrintStream__println$short$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$short$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$int$
	__method__java_io_PrintStream__println$int$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__println$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$java_lang_Object$
	__method__java_io_PrintStream__print$java_lang_Object$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$boolean$
	__method__java_io_PrintStream__print$boolean$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$boolean$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$byte$
	__method__java_io_PrintStream__print$byte$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$byte$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$char$
	__method__java_io_PrintStream__print$char$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$char$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$short$
	__method__java_io_PrintStream__print$short$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$short$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$int$
	__method__java_io_PrintStream__print$int$:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_PrintStream__print$int$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_io_PrintStream__PrintStream
	__constructor__java_io_PrintStream__PrintStream:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
					mov eax, __constructor__java_io_OutputStream__OutputStream
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
