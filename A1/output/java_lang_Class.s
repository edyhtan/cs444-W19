	global __class_java_lang_Class
__class_java_lang_Class:
section .data

		global __ref_SIT_java_lang_Class
	__ref_SIT_java_lang_Class		dd 0

		global __ref_PARENTS_java_lang_Class
	__ref_PARENTS_java_lang_Class		dd 0

		global __method__java_lang_Class__getClass
	__method__java_lang_Class__getClass:
		dd [__method__java_lang_Object__getClass]

		global __method__java_lang_Class__hashCode
	__method__java_lang_Class__hashCode:
		dd [__method__java_lang_Object__hashCode]

		global __method__java_lang_Class__equals$java_lang_Object$
	__method__java_lang_Class__equals$java_lang_Object$:
		dd [__method__java_lang_Object__equals$java_lang_Object$]

		global __method__java_lang_Class__clone
	__method__java_lang_Class__clone:
		dd [__method__java_lang_Object__clone]

		global __method__java_lang_Class__toString
	__method__java_lang_Class__toString:
		dd [__method__java_lang_Object__toString]

section .text

