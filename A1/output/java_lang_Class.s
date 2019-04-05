	global __class_java_lang_Class
__class_java_lang_Class:

section .data

		global __ref_SIT_java_lang_Class
	__ref_SIT_java_lang_Class:		dd 0

		global __ref_PARENTS_java_lang_Class
	__ref_PARENTS_java_lang_Class:		dd 00000000010001000000b

	; Methods	
			extern __method__java_lang_Object__getClass
			extern __method__java_lang_Object__hashCode
			extern __method__java_lang_Object__equals$java_lang_Object$
			extern __method__java_lang_Object__clone
			extern __method__java_lang_Object__toString
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

section .text

