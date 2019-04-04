	global __class_java_lang_Object
__class_java_lang_Object:
section .data

		global __ref_SIT_java_lang_Object
	__ref_SIT_java_lang_Object		dd 0

		global __ref_PARENTS_java_lang_Object
	__ref_PARENTS_java_lang_Object		dd 0

section .text

		global __method_java_lang_Object_equals_java.lang.Object
	__method_java_lang_Object_equals_java.lang.Object:
		push ebp
		mov ebp,esp
		jmp _method_return___method_java_lang_Object_equals_java.lang.Object

	_method_return___method_java_lang_Object_equals_java.lang.Object:
		pop ebp
		ret

		global __method_java_lang_Object_toString
	__method_java_lang_Object_toString:
		push ebp
		mov ebp,esp
		mov eax,"Some random object"
		jmp _method_return___method_java_lang_Object_toString

	_method_return___method_java_lang_Object_toString:
		pop ebp
		ret

		global __method_java_lang_Object_hashCode
	__method_java_lang_Object_hashCode:
		push ebp
		mov ebp,esp
		mov eax,42
		jmp _method_return___method_java_lang_Object_hashCode

	_method_return___method_java_lang_Object_hashCode:
		pop ebp
		ret

		global __method_java_lang_Object_clone
	__method_java_lang_Object_clone:
		push ebp
		mov ebp,esp
		jmp _method_return___method_java_lang_Object_clone

	_method_return___method_java_lang_Object_clone:
		pop ebp
		ret

		global __method_java_lang_Object_getClass
	__method_java_lang_Object_getClass:
		push ebp
		mov ebp,esp
		mov eax,null
		jmp _method_return___method_java_lang_Object_getClass

	_method_return___method_java_lang_Object_getClass:
		pop ebp
		ret

