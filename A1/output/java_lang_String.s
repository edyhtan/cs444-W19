	global __class_java_lang_String
__class_java_lang_String:
section .data

		global __ref_SIT_java_lang_String
	__ref_SIT_java_lang_String		dd 0

		global __ref_PARENTS_java_lang_String
	__ref_PARENTS_java_lang_String		dd 0

		global __method__java_lang_String__getClass
	__method__java_lang_String__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_lang_String__hashCode
	__method__java_lang_String__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_lang_String__equals$java_lang_Object$
	__method__java_lang_String__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_lang_String__clone
	__method__java_lang_String__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_lang_String__toString
	__method__java_lang_String__toString:
		dd [__method__java_lang_Object__toString]

		global __STATIC_method__java_lang_String__valueOf$char$
	__STATIC_method__java_lang_String__valueOf$char$:
		dd __m_5

		global __method__java_lang_String__toCharArray
	__method__java_lang_String__toCharArray:
		dd __m_6

		global __method__java_lang_String__indexOf$java_lang_String$
	__method__java_lang_String__indexOf$java_lang_String$:
		dd __m_7

		global __method__java_lang_String__charAt$int$
	__method__java_lang_String__charAt$int$:
		dd __m_8

		global __method__java_lang_String__compareTo$java_lang_String$
	__method__java_lang_String__compareTo$java_lang_String$:
		dd __m_9

		global __method__java_lang_String__length
	__method__java_lang_String__length:
		dd __m_10

		global __STATIC_method__java_lang_String__valueOf$java_lang_Object$
	__STATIC_method__java_lang_String__valueOf$java_lang_Object$:
		dd __m_11

		global __STATIC_method__java_lang_String__valueOf$short$
	__STATIC_method__java_lang_String__valueOf$short$:
		dd __m_12

		global __method__java_lang_String__concat$java_lang_String$
	__method__java_lang_String__concat$java_lang_String$:
		dd __m_13

		global __method__java_lang_String__substring$int$int$
	__method__java_lang_String__substring$int$int$:
		dd __m_14

		global __STATIC_method__java_lang_String__valueOf$byte$
	__STATIC_method__java_lang_String__valueOf$byte$:
		dd __m_15

		global __method__java_lang_String__trim
	__method__java_lang_String__trim:
		dd __m_16

		global __STATIC_method__java_lang_String__valueOf$int$
	__STATIC_method__java_lang_String__valueOf$int$:
		dd __m_17

		global __STATIC_method__java_lang_String__valueOf$java_lang_String$
	__STATIC_method__java_lang_String__valueOf$java_lang_String$:
		dd __m_18

		global __STATIC_method__java_lang_String__valueOf$boolean$
	__STATIC_method__java_lang_String__valueOf$boolean$:
		dd __m_19

		global __method__java_lang_String__compareTo$java_lang_Object$
	__method__java_lang_String__compareTo$java_lang_Object$:
		dd __m_20

section .text

	__m_10:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_10

		_method_return___m_10:
			pop ebp
			ret

	__m_8:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_8

		_method_return___m_8:
			pop ebp
			ret

	__m_13:
		push ebp
		mov ebp, esp

		sub esp,8
		mov eax, 0
		mov [ebp-4], eax
		mov [ebp-8], eax
		jmp _method_return___m_13

		_method_return___m_13:
			pop ebp
			ret

	__m_5:
		push ebp
		mov ebp, esp

		sub esp,4
		mov [ebp-4], eax
		jmp _method_return___m_5

		_method_return___m_5:
			pop ebp
			ret

	__m_17:
		push ebp
		mov ebp, esp

		sub esp,16
		mov [ebp-4], eax
		mov eax, 0
		mov [ebp-8], eax
		mov eax, false
		mov [ebp-12], eax
		;expression code...
		cmp eax,0
		je .else2
		;thenClause ...
		mov eax, "-2147483648"
		jmp _method_return___m_17

		jmp .endif2

		.else2:
		.endif2:
		;expression code...
		cmp eax,0
		je .else3
		;thenClause ...
		
		jmp .endif3

		.else3:
		.endif3:
		;expression code...
		cmp eax,0
		je .else4
		;thenClause ...
		
		jmp .endif4

		.else4:
			;elseClause ...
			.while5:
				;expression code...
				cmp eax,0
				je .endwhile5
				mov [ebp0], eax
								add esp,4

				;statement code...
				jmp .while5

			.endwhile5:

			add esp,4

			
		.endif4:
		;expression code...
		cmp eax,0
		je .else6
		;thenClause ...
		
		jmp .endif6

		.else6:
		.endif6:
		mov [ebp-16], eax
		jmp _method_return___m_17

		_method_return___m_17:
			pop ebp
			ret

	__m_12:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_12

		_method_return___m_12:
			pop ebp
			ret

	__m_15:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_15

		_method_return___m_15:
			pop ebp
			ret

	__m_19:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else8
		;thenClause ...
		mov eax, "true"
		jmp _method_return___m_19

		jmp .endif8

		.else8:
			;elseClause ...
			mov eax, "false"
			jmp _method_return___m_19

		.endif8:

		_method_return___m_19:
			pop ebp
			ret

	__m_11:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else9
		;thenClause ...
		mov eax, "null"
		jmp _method_return___m_11

		jmp .endif9

		.else9:
			;elseClause ...
			jmp _method_return___m_11

		.endif9:

		_method_return___m_11:
			pop ebp
			ret

	__m_18:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else10
		;thenClause ...
		mov eax, "null"
		jmp _method_return___m_18

		jmp .endif10

		.else10:
			;elseClause ...
			jmp _method_return___m_18

		.endif10:

		_method_return___m_18:
			pop ebp
			ret

	__method__java_lang_Object__equals$java_lang_Object$:
		push ebp
		mov ebp, esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else11
		;thenClause ...
		mov eax, false
		jmp _method_return___method__java_lang_Object__equals$java_lang_Object$

		jmp .endif11

		.else11:
		.endif11:
		;expression code...
		cmp eax,0
		je .else12
		;thenClause ...
		mov eax, false
		jmp _method_return___method__java_lang_Object__equals$java_lang_Object$

		jmp .endif12

		.else12:
		.endif12:
		jmp _method_return___method__java_lang_Object__equals$java_lang_Object$

		_method_return___method__java_lang_Object__equals$java_lang_Object$:
			pop ebp
			ret

	__m_14:
		push ebp
		mov ebp, esp

		sub esp,8
		mov eax, 0
		mov [ebp-4], eax
		;expression code...
		cmp eax,0
		je .else13
		;thenClause ...
		mov eax, ""
		jmp _method_return___m_14

		jmp .endif13

		.else13:
		.endif13:
		;expression code...
		cmp eax,0
		je .else14
		;thenClause ...
		mov eax, ""
		jmp _method_return___m_14

		jmp .endif14

		.else14:
		.endif14:
		;expression code...
		cmp eax,0
		je .else15
		;thenClause ...
		mov eax, ""
		jmp _method_return___m_14

		jmp .endif15

		.else15:
		.endif15:
		mov [ebp-8], eax
		jmp _method_return___m_14

		_method_return___m_14:
			pop ebp
			ret

	__m_16:
		push ebp
		mov ebp, esp

		sub esp,8
		mov eax, 0
		mov [ebp-4], eax
		mov eax, 0
		mov [ebp-8], eax
		;expression code...
		cmp eax,0
		je .else19
		;thenClause ...
		mov eax, ""
		jmp _method_return___m_16

		jmp .endif19

		.else19:
			;elseClause ...
			jmp _method_return___m_16

		.endif19:

		_method_return___m_16:
			pop ebp
			ret

	__method__java_lang_Object__hashCode:
		push ebp
		mov ebp, esp

		sub esp,4
		mov eax, 0
		mov [ebp-4], eax
		add esp,4
		jmp _method_return___method__java_lang_Object__hashCode

		_method_return___method__java_lang_Object__hashCode:
			pop ebp
			ret

	__method__java_lang_Object__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Object__toString

		_method_return___method__java_lang_Object__toString:
			pop ebp
			ret

	__m_20:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___m_20

		_method_return___m_20:
			pop ebp
			ret

	__m_9:
		push ebp
		mov ebp, esp

		sub esp,8
		mov eax, 0
		mov [ebp-4], eax
		mov eax, true
		mov [ebp-8], eax
		.while21:
			;expression code...
			cmp eax,0
			je .endwhile21
			;expression code...
			cmp eax,0
			je .else22
			;thenClause ...
			mov eax, 0
			jmp _method_return___m_9

			jmp .endif22

			.else22:
			.endif22:
			;expression code...
			cmp eax,0
			je .else23
			;thenClause ...
			jmp _method_return___m_9

			jmp .endif23

			.else23:
			.endif23:
			;expression code...
			cmp eax,0
			je .else24
			;thenClause ...
			mov eax, 1
			jmp _method_return___m_9

			jmp .endif24

			.else24:
			.endif24:
			;expression code...
			cmp eax,0
			je .else25
			;thenClause ...
			jmp _method_return___m_9

			jmp .endif25

			.else25:
			.endif25:
			;expression code...
			cmp eax,0
			je .else26
			;thenClause ...
			mov eax, 1
			jmp _method_return___m_9

			jmp .endif26

			.else26:
			.endif26:
						;statement code...
			jmp .while21

		.endwhile21:

		mov eax, 0
		jmp _method_return___m_9

		_method_return___m_9:
			pop ebp
			ret

	__m_6:
		push ebp
		mov ebp, esp

		sub esp,4
		mov [ebp-4], eax
		add esp,4
		jmp _method_return___m_6

		_method_return___m_6:
			pop ebp
			ret

	__m_7:
		push ebp
		mov ebp, esp

		sub esp,8
		mov eax, 0
		mov [ebp-4], eax
		mov eax, 0
		mov [ebp-8], eax
		jmp _method_return___m_7

		_method_return___m_7:
			pop ebp
			ret

