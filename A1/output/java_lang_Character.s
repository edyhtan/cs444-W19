	global __class_java_lang_Character
__class_java_lang_Character:
section .data

		global __ref_SIT_java_lang_Character
	__ref_SIT_java_lang_Character		dd 0

		global __ref_PARENTS_java_lang_Character
	__ref_PARENTS_java_lang_Character		dd 0

		global __method__java_lang_Character__getClass
	__method__java_lang_Character__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_lang_Character__hashCode
	__method__java_lang_Character__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_lang_Character__equals$java_lang_Object$
	__method__java_lang_Character__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_lang_Character__clone
	__method__java_lang_Character__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_lang_Character__toString
	__method__java_lang_Character__toString:
		dd [__method__java_lang_Object__toString]

section .text

	__method__java_lang_Object__toString:
		push ebp
		mov ebp, esp

		sub esp,0
		jmp _method_return___method__java_lang_Object__toString

		_method_return___method__java_lang_Object__toString:
			pop ebp
			ret

