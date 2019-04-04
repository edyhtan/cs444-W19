	global __class_Hello
__class_Hello:
section .data

		global __ref_SIT_Hello
	__ref_SIT_Hello		dd 0

		global __ref_PARENTS_Hello
	__ref_PARENTS_Hello		dd 0

		global __method__Hello__getClass
	__method__Hello__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__Hello__hashCode
	__method__Hello__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__Hello__equals$java_lang_Object$
	__method__Hello__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__Hello__clone
	__method__Hello__clone:
		dd [__method__java_lang_Object__clone]

		global __method__Hello__toString
	__method__Hello__toString:
		dd [__method__java_lang_Object__toString]

section .text

