extern __STATIC_method__java_lang_String__valueOf$byte$
extern __STATIC_method__java_lang_String__valueOf$boolean$
extern __constructor__java_io_OutputStream__OutputStream
extern __STATIC_method__java_lang_String__valueOf$char$
extern __method__java_lang_String__charAt$int$
extern __method__java_io_OutputStream__write$char$
extern __method__java_lang_String__length
extern __STATIC_method__java_lang_String__valueOf$short$
extern __STATIC_method__java_lang_String__valueOf$int$
extern __STATIC_method__java_lang_String__valueOf$java_lang_Object$

	global __class_java_io_PrintStream
__class_java_io_PrintStream:

section .data

		global __ref_SIT_java_io_PrintStream
	__ref_SIT_java_io_PrintStream:
		dd 0

		global __ref_PARENTS_java_io_PrintStream
	__ref_PARENTS_java_io_PrintStream:
		dd 00000000010000000011b

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

;; Static fields

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
		;; ---end of declare i


		.for0:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Method Invocation:
			;; o.code
			;; Pushing args
			call __method__java_lang_String__length

			add esp, 4
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
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Method Invocation:
				;; o.code
				;; Pushing args
					;; Local Var i
					mov eax, ebp
					sub eax, 4
					mov eax, [eax]

					push eax

				call __method__java_lang_String__charAt$int$

				add esp, 8
				push eax

			call __method__java_io_OutputStream__write$char$

			add esp, 8



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

		;; Method Invocation:
		;; o.code
		;; Pushing args
						push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$java_lang_String$
	__method__java_io_PrintStream__println$java_lang_String$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Local Var s
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8
		;; Method Invocation:
		;; o.code
		;; Pushing args
			mov eax, 39
			push eax

		call __method__java_io_OutputStream__write$char$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$java_lang_Object$
	__method__java_io_PrintStream__println$java_lang_Object$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$java_lang_Object$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$boolean$
	__method__java_io_PrintStream__println$boolean$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$boolean$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$boolean$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$byte$
	__method__java_io_PrintStream__println$byte$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$byte$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$byte$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$char$
	__method__java_io_PrintStream__println$char$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$char$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$char$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$short$
	__method__java_io_PrintStream__println$short$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$short$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$short$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__println$int$
	__method__java_io_PrintStream__println$int$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$int$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__println$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__println$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$java_lang_Object$
	__method__java_io_PrintStream__print$java_lang_Object$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$java_lang_Object$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__print$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$boolean$
	__method__java_io_PrintStream__print$boolean$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$boolean$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__print$boolean$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$byte$
	__method__java_io_PrintStream__print$byte$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$byte$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__print$byte$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$char$
	__method__java_io_PrintStream__print$char$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$char$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__print$char$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$short$
	__method__java_io_PrintStream__print$short$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$short$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

		_method_return___method__java_io_PrintStream__print$short$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_PrintStream__print$int$
	__method__java_io_PrintStream__print$int$:
		push ebp
		mov ebp, esp

		;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Method Invocation:
			;; o.code
			;; Pushing args
				;; Local Var b
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax

			call __STATIC_method__java_lang_String__valueOf$int$

			add esp, 8
			push eax

		call __method__java_io_PrintStream__print$java_lang_String$

		add esp, 8

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
