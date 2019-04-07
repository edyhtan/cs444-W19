extern __method__java_lang_Object__clone
extern __malloc
extern __method__java_lang_Object__toString
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_ArrayTemplate
__class_ArrayTemplate:
		global __ref_SIT_ArrayTemplate
	__ref_SIT_ArrayTemplate:
		dd 0

		global __ref_PARENTS_ArrayTemplate
	__ref_PARENTS_ArrayTemplate:
		dd 00000000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields

section .text

;; -----Methods-----
;; -----Constructors-----

;; eax: size of the array
;; ebx: 0 for number, -1 for boolean, or classTAG
global __new_array
__new_array:
	push eax
	push ebx
	add eax, 3
	imul eax, 4
	call __malloc
	pop ebx
	mov [eax+4], ebx
	pop ebx
	mov [eax+8], ebx
	ret
