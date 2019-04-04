	global __class_java_util_Arrays
__class_java_util_Arrays:
section .data

		global __ref_SIT_java_util_Arrays
	__ref_SIT_java_util_Arrays		dd 0

		global __ref_PARENTS_java_util_Arrays
	__ref_PARENTS_java_util_Arrays		dd 0

section .text

		global __STATIC_method__java_util_Arrays__equals$boolean@$boolean@$
	__STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
		push ebp
		mov ebp,esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else0
		;thenClause ...
		mov eax,false
		jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

		jmp .endif0

		.else0:
		.endif0:
		add esp,4
		mov eax,true
		jmp _method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$

	_method_return___STATIC_method__java_util_Arrays__equals$boolean@$boolean@$:
		pop ebp
		ret

		global __STATIC_method__java_util_Arrays__equals$char@$char@$
	__STATIC_method__java_util_Arrays__equals$char@$char@$:
		push ebp
		mov ebp,esp

		sub esp,0
		;expression code...
		cmp eax,0
		je .else2
		;thenClause ...
		mov eax,false
		jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

		jmp .endif2

		.else2:
		.endif2:
		add esp,4
		mov eax,true
		jmp _method_return___STATIC_method__java_util_Arrays__equals$char@$char@$

	_method_return___STATIC_method__java_util_Arrays__equals$char@$char@$:
		pop ebp
		ret

