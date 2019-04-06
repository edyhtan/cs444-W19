extern __method__java_lang_Object__clone
extern __exception
extern __malloc
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$

	global __class_java_lang_String
__class_java_lang_String:

section .data

		global __ref_SIT_java_lang_String
	__ref_SIT_java_lang_String:
		dd 0

		global __ref_PARENTS_java_lang_String
	__ref_PARENTS_java_lang_String:
		dd 00000000011000000000b

	; Methods	
																	dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__java_lang_String__valueOf$char$
		dd __method__java_lang_String__toCharArray
		dd __method__java_lang_String__indexOf$java_lang_String$
		dd __method__java_lang_String__charAt$int$
		dd __method__java_lang_String__compareTo$java_lang_String$
		dd __method__java_lang_String__length
		dd __STATIC_method__java_lang_String__valueOf$java_lang_Object$
		dd __STATIC_method__java_lang_String__valueOf$short$
		dd __method__java_lang_String__concat$java_lang_String$
		dd __method__java_lang_String__substring$int$int$
		dd __STATIC_method__java_lang_String__valueOf$byte$
		dd __method__java_lang_String__trim
		dd __STATIC_method__java_lang_String__valueOf$int$
		dd __STATIC_method__java_lang_String__valueOf$java_lang_String$
		dd __STATIC_method__java_lang_String__valueOf$boolean$
		dd __method__java_lang_String__compareTo$java_lang_Object$

section .text

;; -----Methods-----
		global __method__java_lang_String__length
	__method__java_lang_String__length:
		push ebp
		mov ebp, esp

				;; Implicit This
		mov eax, [ebp + 0]
		;; Field chars
		mov eax, ebp
		add eax, 4
		mov eax, [eax]

		;; Field length
		mov eax, ebp
		add eax, 4
		mov eax, [eax]

		jmp _method_return___method__java_lang_String__length

		_method_return___method__java_lang_String__length:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__charAt$int$
	__method__java_lang_String__charAt$int$:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_String__charAt$int$

		_method_return___method__java_lang_String__charAt$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__concat$java_lang_String$
	__method__java_lang_String__concat$java_lang_String$:
		push ebp
		mov ebp, esp

				;; ---declare i
		mov eax, 0
		push eax

		;; ---declare newchars
		push eax

		;forInit code...


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

		;forInit code...


		.for1:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jl .lt1
			mov eax, 0
			jmp .end_lt1
			.lt1:
				mov eax, 1
			.end_lt1:

			cmp eax, 0
			je .endfor1
			;statement code...



			;forUpdate code...


			jmp .for1

		.endfor1:

		;; Allocating size of 1
		mov eax, 1
				call __malloc
					mov ebx, __class_java_lang_String
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			;; Local Var newchars
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]


			
					call __constructor__java_lang_String__String$char@$
		add esp, 4
		pop eax
		jmp _method_return___method__java_lang_String__concat$java_lang_String$

		_method_return___method__java_lang_String__concat$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$char$
	__STATIC_method__java_lang_String__valueOf$char$:
		push ebp
		mov ebp, esp

				;; ---declare newchars
		push eax


		;; Allocating size of 1
		mov eax, 1
				call __malloc
					mov ebx, __class_java_lang_String
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			;; Local Var newchars
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]


			
					call __constructor__java_lang_String__String$char@$
		add esp, 4
		pop eax
		jmp _method_return___STATIC_method__java_lang_String__valueOf$char$

		_method_return___STATIC_method__java_lang_String__valueOf$char$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$int$
	__STATIC_method__java_lang_String__valueOf$int$:
		push ebp
		mov ebp, esp

				;; ---declare ret
		push eax

		;; ---declare j
		mov eax, 0
		push eax

		;; ---declare wasneg
		mov eax, 0
		push eax

		;; if statement2
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else2
		;thenClause ...
						jmp _method_return___STATIC_method__java_lang_String__valueOf$int$

		jmp .endif2

		.else2:
		.endif2:
		;; if statement3
		;expression code...
		;; ompare_lt
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		jl .lt1
		mov eax, 0
		jmp .end_lt1
		.lt1:
			mov eax, 1
		.end_lt1:

		cmp eax, 0
		je .else3
		;thenClause ...





		jmp .endif3

		.else3:
		.endif3:
		;; if statement4
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq2
		mov eax, 0
		jmp .end_eq2
		.eq2:
			mov eax, 1
		.end_eq2:

		cmp eax, 0
		je .else4
		;thenClause ...





		jmp .endif4

		.else4:
			;elseClause ...
			.while5:
				;expression code...
				;; ompare_gt
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				mov eax, 0
				pop ebx
				cmp ebx, eax
				jg .gt3
				mov eax, 0
				jmp .end_gt3
				.gt3:
					mov eax, 1
				.end_gt3:

				cmp eax, 0
				je .endwhile5
				;; while statement code...
				;; ---declare d
				;; Div
				;; RHS code...
				mov eax, 10
				cmp eax, 0
				je __exception
				push eax
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				add eax, 8
				mov eax, [eax]

				pop ebx
				mov edx, 0
				idiv ebx
				;; Mod
mov eax, edx

				push eax








				add esp, 4

				jmp .while5

			.endwhile5:

				add esp, 4



		.endif4:
		;; if statement6
		;expression code...
		;; Local Var wasneg
		mov eax, ebp
		sub eax, 12
		mov eax, [eax]

		cmp eax, 0
		je .else6
		;thenClause ...





		jmp .endif6

		.else6:
		.endif6:
		;; ---declare ret2
		push eax

		;forInit code...


		.for7:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var j
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt4
			mov eax, 0
			jmp .end_lt4
			.lt4:
				mov eax, 1
			.end_lt4:

			cmp eax, 0
			je .endfor7
			;statement code...



			;forUpdate code...


			jmp .for7

		.endfor7:

		;; Allocating size of 1
		mov eax, 1
				call __malloc
					mov ebx, __class_java_lang_String
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			;; Local Var ret2
			mov eax, ebp
			sub eax, 16
			mov eax, [eax]


			
					call __constructor__java_lang_String__String$char@$
		add esp, 4
		pop eax
		jmp _method_return___STATIC_method__java_lang_String__valueOf$int$

		_method_return___STATIC_method__java_lang_String__valueOf$int$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$short$
	__STATIC_method__java_lang_String__valueOf$short$:
		push ebp
		mov ebp, esp

				jmp _method_return___STATIC_method__java_lang_String__valueOf$short$

		_method_return___STATIC_method__java_lang_String__valueOf$short$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$byte$
	__STATIC_method__java_lang_String__valueOf$byte$:
		push ebp
		mov ebp, esp

				jmp _method_return___STATIC_method__java_lang_String__valueOf$byte$

		_method_return___STATIC_method__java_lang_String__valueOf$byte$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$boolean$
	__STATIC_method__java_lang_String__valueOf$boolean$:
		push ebp
		mov ebp, esp

				;; if statement8
		;expression code...
		;; Local Var b
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		cmp eax, 0
		je .else8
		;thenClause ...
						jmp _method_return___STATIC_method__java_lang_String__valueOf$boolean$

		jmp .endif8

		.else8:
			;elseClause ...
						jmp _method_return___STATIC_method__java_lang_String__valueOf$boolean$

		.endif8:

		_method_return___STATIC_method__java_lang_String__valueOf$boolean$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$java_lang_Object$
	__STATIC_method__java_lang_String__valueOf$java_lang_Object$:
		push ebp
		mov ebp, esp

				;; if statement9
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var o
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else9
		;thenClause ...
						jmp _method_return___STATIC_method__java_lang_String__valueOf$java_lang_Object$

		jmp .endif9

		.else9:
			;elseClause ...
			jmp _method_return___STATIC_method__java_lang_String__valueOf$java_lang_Object$

		.endif9:

		_method_return___STATIC_method__java_lang_String__valueOf$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __STATIC_method__java_lang_String__valueOf$java_lang_String$
	__STATIC_method__java_lang_String__valueOf$java_lang_String$:
		push ebp
		mov ebp, esp

				;; if statement10
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var o
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else10
		;thenClause ...
						jmp _method_return___STATIC_method__java_lang_String__valueOf$java_lang_String$

		jmp .endif10

		.else10:
			;elseClause ...
			;; Local Var o
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			jmp _method_return___STATIC_method__java_lang_String__valueOf$java_lang_String$

		.endif10:

		_method_return___STATIC_method__java_lang_String__valueOf$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__equals$java_lang_Object$
	__method__java_lang_String__equals$java_lang_Object$:
		push ebp
		mov ebp, esp

				;; if statement11
		;expression code...
		;; ompare_eq
		;; LHS code...
		;; Local Var o
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		je .eq0
		mov eax, 0
		jmp .end_eq0
		.eq0:
			mov eax, 1
		.end_eq0:

		cmp eax, 0
		je .else11
		;thenClause ...
			mov eax, 0
			jmp _method_return___method__java_lang_String__equals$java_lang_Object$

		jmp .endif11

		.else11:
		.endif11:
		;; if statement12
		;expression code...
		cmp eax, 0
		je .else12
		;thenClause ...
			mov eax, 0
			jmp _method_return___method__java_lang_String__equals$java_lang_Object$

		jmp .endif12

		.else12:
		.endif12:
		jmp _method_return___method__java_lang_String__equals$java_lang_Object$

		_method_return___method__java_lang_String__equals$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__substring$int$int$
	__method__java_lang_String__substring$int$int$:
		push ebp
		mov ebp, esp

				;; ---declare k
		mov eax, 0
		push eax

		;; if statement13
		;expression code...
		;; ompare_lt
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		push eax
		;; RHS code...
		mov eax, 0
		pop ebx
		cmp ebx, eax
		jl .lt0
		mov eax, 0
		jmp .end_lt0
		.lt0:
			mov eax, 1
		.end_lt0:

		cmp eax, 0
		je .else13
		;thenClause ...
						jmp _method_return___method__java_lang_String__substring$int$int$

		jmp .endif13

		.else13:
		.endif13:
		;; if statement14
		;expression code...
		;; ompare_gt
		;; LHS code...
		;; Local Var j
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		pop ebx
		cmp ebx, eax
		jg .gt1
		mov eax, 0
		jmp .end_gt1
		.gt1:
			mov eax, 1
		.end_gt1:

		cmp eax, 0
		je .else14
		;thenClause ...
						jmp _method_return___method__java_lang_String__substring$int$int$

		jmp .endif14

		.else14:
		.endif14:
		;; if statement15
		;expression code...
		;; ompare_lt
		;; LHS code...
		;; Local Var j
		mov eax, ebp
		add eax, 8
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var i
		mov eax, ebp
		add eax, 12
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		jl .lt2
		mov eax, 0
		jmp .end_lt2
		.lt2:
			mov eax, 1
		.end_lt2:

		cmp eax, 0
		je .else15
		;thenClause ...
						jmp _method_return___method__java_lang_String__substring$int$int$

		jmp .endif15

		.else15:
		.endif15:
		;; ---declare ret
		push eax

		;forInit code...


		.for16:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var k
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var j
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt3
			mov eax, 0
			jmp .end_lt3
			.lt3:
				mov eax, 1
			.end_lt3:

			cmp eax, 0
			je .endfor16
			;statement code...



			;forUpdate code...


			jmp .for16

		.endfor16:

		;; Allocating size of 1
		mov eax, 1
				call __malloc
					mov ebx, __class_java_lang_String
		mov [eax], ebx

		;; Pushing object
		push eax

		;; Pushing args:
			;; Local Var ret
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]


			
					call __constructor__java_lang_String__String$char@$
		add esp, 4
		pop eax
		jmp _method_return___method__java_lang_String__substring$int$int$

		_method_return___method__java_lang_String__substring$int$int$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__trim
	__method__java_lang_String__trim:
		push ebp
		mov ebp, esp

				;; ---declare i
		mov eax, 0
		push eax

		;; ---declare j
		mov eax, 0
		push eax

		;forInit code...


		.for17:
			;expression code...
			;; logical_and
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jl .lt1
			mov eax, 0
			jmp .end_lt1
			.lt1:
				mov eax, 1
			.end_lt1:

			cmp eax, 0
			je .end_and0
			;; ompare_le
			;; LHS code...
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			jle .le2
			mov eax, 0
			jmp .end_le2
			.le2:
				mov eax, 1
			.end_le2:

			.end_and0:

			cmp eax, 0
			je .endfor17
			;statement code...


			;forUpdate code...


			jmp .for17

		.endfor17:

		;forInit code...


		.for18:
			;expression code...
			;; logical_and
			;; ompare_ge
			;; LHS code...
			;; Local Var j
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			push eax
			;; RHS code...
			mov eax, 0
			pop ebx
			cmp ebx, eax
			jge .ge4
			mov eax, 0
			jmp .end_ge4
			.ge4:
				mov eax, 1
			.end_ge4:

			cmp eax, 0
			je .end_and3
			;; ompare_le
			;; LHS code...
			push eax
			;; RHS code...
			mov eax, 39
			pop ebx
			cmp ebx, eax
			jle .le5
			mov eax, 0
			jmp .end_le5
			.le5:
				mov eax, 1
			.end_le5:

			.end_and3:

			cmp eax, 0
			je .endfor18
			;statement code...


			;forUpdate code...


			jmp .for18

		.endfor18:

		;; if statement19
		;expression code...
		;; ompare_gt
		;; LHS code...
		;; Local Var i
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		push eax
		;; RHS code...
		;; Local Var j
		mov eax, ebp
		sub eax, 8
		mov eax, [eax]

		pop ebx
		cmp ebx, eax
		jg .gt6
		mov eax, 0
		jmp .end_gt6
		.gt6:
			mov eax, 1
		.end_gt6:

		cmp eax, 0
		je .else19
		;thenClause ...
						jmp _method_return___method__java_lang_String__trim

		jmp .endif19

		.else19:
			;elseClause ...
			jmp _method_return___method__java_lang_String__trim

		.endif19:

		_method_return___method__java_lang_String__trim:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__hashCode
	__method__java_lang_String__hashCode:
		push ebp
		mov ebp, esp

				;; ---declare h
		mov eax, 0
		push eax

		;forInit code...
		;; ---declare i
		mov eax, 0
		push eax


		.for20:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field chars
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt0
			mov eax, 0
			jmp .end_lt0
			.lt0:
				mov eax, 1
			.end_lt0:

			cmp eax, 0
			je .endfor20
			;statement code...




			;forUpdate code...


			jmp .for20

		.endfor20:
			add esp, 4

		;; Local Var h
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___method__java_lang_String__hashCode

		_method_return___method__java_lang_String__hashCode:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__toString
	__method__java_lang_String__toString:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_String__toString

		_method_return___method__java_lang_String__toString:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__compareTo$java_lang_Object$
	__method__java_lang_String__compareTo$java_lang_Object$:
		push ebp
		mov ebp, esp

				jmp _method_return___method__java_lang_String__compareTo$java_lang_Object$

		_method_return___method__java_lang_String__compareTo$java_lang_Object$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__compareTo$java_lang_String$
	__method__java_lang_String__compareTo$java_lang_String$:
		push ebp
		mov ebp, esp

				;; ---declare i
		mov eax, 0
		push eax

		;; ---declare b
		mov eax, 1
		push eax

		.while21:
			;expression code...
			;; Local Var b
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			cmp eax, 0
			je .endwhile21
			;; while statement code...
			;; if statement22
			;expression code...
			;; logical_and
			;; ompare_ge
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field chars
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jge .ge1
			mov eax, 0
			jmp .end_ge1
			.ge1:
				mov eax, 1
			.end_ge1:

			cmp eax, 0
			je .end_and0
			;; ompare_ge
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var other
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			;; Field chars
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jge .ge2
			mov eax, 0
			jmp .end_ge2
			.ge2:
				mov eax, 1
			.end_ge2:

			.end_and0:

			cmp eax, 0
			je .else22
			;thenClause ...
				mov eax, 0
				jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

			jmp .endif22

			.else22:
			.endif22:

			;; if statement23
			;expression code...
			;; ompare_ge
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Implicit This
			mov eax, [ebp + 0]
			;; Field chars
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jge .ge3
			mov eax, 0
			jmp .end_ge3
			.ge3:
				mov eax, 1
			.end_ge3:

			cmp eax, 0
			je .else23
			;thenClause ...
				jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

			jmp .endif23

			.else23:
			.endif23:

			;; if statement24
			;expression code...
			;; ompare_ge
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var other
			mov eax, ebp
			add eax, 8
			mov eax, [eax]

			;; Field chars
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jge .ge4
			mov eax, 0
			jmp .end_ge4
			.ge4:
				mov eax, 1
			.end_ge4:

			cmp eax, 0
			je .else24
			;thenClause ...
				mov eax, 1
				jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

			jmp .endif24

			.else24:
			.endif24:

			;; if statement25
			;expression code...
			;; ompare_lt
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jl .lt5
			mov eax, 0
			jmp .end_lt5
			.lt5:
				mov eax, 1
			.end_lt5:

			cmp eax, 0
			je .else25
			;thenClause ...
				jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

			jmp .endif25

			.else25:
			.endif25:

			;; if statement26
			;expression code...
			;; ompare_gt
			;; LHS code...
			push eax
			;; RHS code...
			pop ebx
			cmp ebx, eax
			jg .gt6
			mov eax, 0
			jmp .end_gt6
			.gt6:
				mov eax, 1
			.end_gt6:

			cmp eax, 0
			je .else26
			;thenClause ...
				mov eax, 1
				jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

			jmp .endif26

			.else26:
			.endif26:



			jmp .while21

		.endwhile21:

		mov eax, 0
		jmp _method_return___method__java_lang_String__compareTo$java_lang_String$

		_method_return___method__java_lang_String__compareTo$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__toCharArray
	__method__java_lang_String__toCharArray:
		push ebp
		mov ebp, esp

				;; ---declare ret
		push eax

		;forInit code...
		;; ---declare i
		mov eax, 0
		push eax


		.for27:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var i
			mov eax, ebp
			sub eax, 8
			mov eax, [eax]

			push eax
			;; RHS code...
			;; Local Var ret
			mov eax, ebp
			sub eax, 4
			mov eax, [eax]

			;; Field length
			mov eax, ebp
			add eax, 4
			mov eax, [eax]

			pop ebx
			cmp ebx, eax
			jl .lt0
			mov eax, 0
			jmp .end_lt0
			.lt0:
				mov eax, 1
			.end_lt0:

			cmp eax, 0
			je .endfor27
			;statement code...




			;forUpdate code...


			jmp .for27

		.endfor27:
			add esp, 4

		;; Local Var ret
		mov eax, ebp
		sub eax, 4
		mov eax, [eax]

		jmp _method_return___method__java_lang_String__toCharArray

		_method_return___method__java_lang_String__toCharArray:
			mov esp, ebp
			pop ebp
			ret

		global __method__java_lang_String__indexOf$java_lang_String$
	__method__java_lang_String__indexOf$java_lang_String$:
		push ebp
		mov ebp, esp

				;; ---declare offset
		mov eax, 0
		push eax

		;; ---declare i
		mov eax, 0
		push eax

		;forInit code...


		.for28:
			;expression code...
			;; ompare_lt
			;; LHS code...
			;; Local Var offset
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
			je .endfor28
			;statement code...
			;; ---declare found
			mov eax, 1
			push eax


			;forInit code...


			.for29:
				;expression code...
				;; ompare_lt
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				pop ebx
				cmp ebx, eax
				jl .lt1
				mov eax, 0
				jmp .end_lt1
				.lt1:
					mov eax, 1
				.end_lt1:

				cmp eax, 0
				je .endfor29
				;statement code...
				;; if statement30
				;expression code...
				;; ompare_ge
				;; LHS code...
				;; Plus
				;; LHS code...
				;; Local Var i
				mov eax, ebp
				sub eax, 8
				mov eax, [eax]

				push eax
				;; RHS code...
				;; Local Var offset
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				pop ebx
				add ebx, eax
				mov eax, ebx

				push eax
				;; RHS code...
				pop ebx
				cmp ebx, eax
				jge .ge2
				mov eax, 0
				jmp .end_ge2
				.ge2:
					mov eax, 1
				.end_ge2:

				cmp eax, 0
				je .else30
				;thenClause ...


				jmp .endif30

				.else30:
					;elseClause ...
					;; if statement31
					;expression code...
					;; ompare_ne
					;; LHS code...
					push eax
					;; RHS code...
					pop ebx
					cmp ebx, eax
					jne .ne3
					mov eax, 0
					jmp .end_ne3
					.ne3:
						mov eax, 1
					.end_ne3:

					cmp eax, 0
					je .else31
					;thenClause ...


					jmp .endif31

					.else31:
					.endif31:

				.endif30:



				;forUpdate code...


				jmp .for29

			.endfor29:


			;; if statement32
			;expression code...
			;; Local Var found
			mov eax, ebp
			sub eax, 12
			mov eax, [eax]

			cmp eax, 0
			je .else32
			;thenClause ...
				;; Local Var offset
				mov eax, ebp
				sub eax, 4
				mov eax, [eax]

				jmp _method_return___method__java_lang_String__indexOf$java_lang_String$

			jmp .endif32

			.else32:
			.endif32:

			add esp, 4



			;forUpdate code...


			jmp .for28

		.endfor28:

		jmp _method_return___method__java_lang_String__indexOf$java_lang_String$

		_method_return___method__java_lang_String__indexOf$java_lang_String$:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__java_lang_String__String
	__constructor__java_lang_String__String:
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
;; Field init:: chars
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_String__String$char@$
	__constructor__java_lang_String__String$char@$:
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
;; Field init:: chars
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

			;forInit code...
			;; ---declare i
			mov eax, 0
			push eax


			.for33:
				;expression code...
				;; ompare_lt
				;; LHS code...
				push eax
				;; RHS code...
				;; Implicit This
				mov eax, [ebp + 0]
				;; Field chars
				mov eax, ebp
				add eax, 4
				mov eax, [eax]

				;; Field length
				mov eax, ebp
				add eax, 4
				mov eax, [eax]

				pop ebx
				cmp ebx, eax
				jl .lt4
				mov eax, 0
				jmp .end_lt4
				.lt4:
					mov eax, 1
				.end_lt4:

				cmp eax, 0
				je .endfor33
				;statement code...



				;forUpdate code...


				jmp .for33

			.endfor33:
				add esp, 4

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
		global __constructor__java_lang_String__String$java_lang_String$
	__constructor__java_lang_String__String$java_lang_String$:
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
;; Field init:: chars
mov eax, 0
		mov ebx, [esp]
		add ebx, 4
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body

;; Epilogue
		mov esp, ebp
		pop ebp
		ret
