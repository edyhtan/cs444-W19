extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$
extern NATIVEjava.io.OutputStream.nativeWrite


section .data

	global __class_java_io_OutputStream
__class_java_io_OutputStream:
		global __ref_SIT_java_io_OutputStream
	__ref_SIT_java_io_OutputStream:
		dd 0

		global __ref_PARENTS_java_io_OutputStream
	__ref_PARENTS_java_io_OutputStream:
		dd 00000000010000000001b

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

;; Static fields

section .text

;; -----Methods-----
		global __method__java_io_OutputStream__write$char$
	__method__java_io_OutputStream__write$char$:
		push ebp
		mov ebp, esp

				;; Method Invocation:
		;; o.code
		;; Pushing args
			push eax

		call __method__java_io_OutputStream__write$int$

		add esp, 8

		_method_return___method__java_io_OutputStream__write$char$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_io_OutputStream__write$int$
	__method__java_io_OutputStream__write$int$:
		push ebp
		mov ebp, esp

				;; Method Invocation:
		;; o.code
		;; Pushing args
			;; Local Var b
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			push eax

		call __STATIC_method__java_io_OutputStream__nativeWrite$int$

		add esp, 8

		_method_return___method__java_io_OutputStream__write$int$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_io_OutputStream__nativeWrite$int$
	__STATIC_method__java_io_OutputStream__nativeWrite$int$:
		jmp NATIVEjava.io.OutputStream.nativeWrite
		global __method__java_io_OutputStream__flush
	__method__java_io_OutputStream__flush:
		push ebp
		mov ebp, esp

		
		_method_return___method__java_io_OutputStream__flush:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_io_OutputStream__OutputStream
	__constructor__java_io_OutputStream__OutputStream:
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
