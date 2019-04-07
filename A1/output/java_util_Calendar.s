extern __method__java_lang_Object__clone
extern __method__java_lang_Object__toString
extern __constructor__java_lang_Object__Object
extern __method__java_lang_Object__hashCode
extern __method__java_lang_Object__getClass
extern __method__java_lang_Object__equals$java_lang_Object$


section .data

	global __class_java_util_Calendar
__class_java_util_Calendar:
		global __ref_SIT_java_util_Calendar
	__ref_SIT_java_util_Calendar:
		dd 0

		global __ref_PARENTS_java_util_Calendar
	__ref_PARENTS_java_util_Calendar:
		dd 01000010000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString

;; Static fields
		global __field_java_util_Calendar_MONDAY
	__field_java_util_Calendar_MONDAY		dd 0


section .text

;; -----Methods-----
;; -----Constructors-----
		global __constructor__java_util_Calendar__Calendar
	__constructor__java_util_Calendar__Calendar:
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
;; Field init:: MONDAY
				mov eax, 2
		mov ebx, [esp]
		add ebx, 0
		mov [ebx], eax
;; Field init end, pop object
		add esp, 4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
