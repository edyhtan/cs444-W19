	global __class_foo_bar
__class_foo_bar:

section .data

		global __ref_SIT_foo_bar
	__ref_SIT_foo_bar		dd 0

		global __ref_PARENTS_foo_bar
	__ref_PARENTS_foo_bar		dd 00010000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

section .text

