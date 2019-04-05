	global __class_A
__class_A:

section .data

		global __ref_SIT_A
	__ref_SIT_A		dd 0

		global __ref_PARENTS_A
	__ref_PARENTS_A		dd 10000000001000000000b

	; Methods	
		dd __method__java_lang_Object__getClass
		dd __method__java_lang_Object__hashCode
		dd __method__java_lang_Object__equals$java_lang_Object$
		dd __method__java_lang_Object__clone
		dd __method__java_lang_Object__toString
		dd __STATIC_method__A__test$int$int$

section .text

-----Methods-----
	global _start
_start:

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_util_Arrays
mov ebx, __ref_SIT_java_util_Arrays
mov [ebx], eax

	extern __method__java_util_Arrays__hashCode
	mov ebx, __method__java_util_Arrays__hashCode
	mov [eax + 0], ebx

	extern __method__java_util_Arrays__equals$java_lang_Object$
	mov ebx, __method__java_util_Arrays__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_util_Arrays__clone
	mov ebx, __method__java_util_Arrays__clone
	mov [eax + 8], ebx

	extern __method__java_util_Arrays__toString
	mov ebx, __method__java_util_Arrays__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_io_PrintStream
mov ebx, __ref_SIT_java_io_PrintStream
mov [ebx], eax

	extern __method__java_io_PrintStream__hashCode
	mov ebx, __method__java_io_PrintStream__hashCode
	mov [eax + 0], ebx

	extern __method__java_io_PrintStream__equals$java_lang_Object$
	mov ebx, __method__java_io_PrintStream__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_io_PrintStream__clone
	mov ebx, __method__java_io_PrintStream__clone
	mov [eax + 8], ebx

	extern __method__java_io_PrintStream__toString
	mov ebx, __method__java_io_PrintStream__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_io_OutputStream
mov ebx, __ref_SIT_java_io_OutputStream
mov [ebx], eax

	extern __method__java_io_OutputStream__hashCode
	mov ebx, __method__java_io_OutputStream__hashCode
	mov [eax + 0], ebx

	extern __method__java_io_OutputStream__equals$java_lang_Object$
	mov ebx, __method__java_io_OutputStream__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_io_OutputStream__clone
	mov ebx, __method__java_io_OutputStream__clone
	mov [eax + 8], ebx

	extern __method__java_io_OutputStream__toString
	mov ebx, __method__java_io_OutputStream__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_System
mov ebx, __ref_SIT_java_lang_System
mov [ebx], eax

	extern __method__java_lang_System__hashCode
	mov ebx, __method__java_lang_System__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_System__equals$java_lang_Object$
	mov ebx, __method__java_lang_System__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_System__clone
	mov ebx, __method__java_lang_System__clone
	mov [eax + 8], ebx

	extern __method__java_lang_System__toString
	mov ebx, __method__java_lang_System__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Integer
mov ebx, __ref_SIT_java_lang_Integer
mov [ebx], eax

	extern __method__java_lang_Integer__hashCode
	mov ebx, __method__java_lang_Integer__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Integer__equals$java_lang_Object$
	mov ebx, __method__java_lang_Integer__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Integer__clone
	mov ebx, __method__java_lang_Integer__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Integer__toString
	mov ebx, __method__java_lang_Integer__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Byte
mov ebx, __ref_SIT_java_lang_Byte
mov [ebx], eax

	extern __method__java_lang_Byte__hashCode
	mov ebx, __method__java_lang_Byte__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Byte__equals$java_lang_Object$
	mov ebx, __method__java_lang_Byte__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Byte__clone
	mov ebx, __method__java_lang_Byte__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Byte__toString
	mov ebx, __method__java_lang_Byte__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Short
mov ebx, __ref_SIT_java_lang_Short
mov [ebx], eax

	extern __method__java_lang_Short__hashCode
	mov ebx, __method__java_lang_Short__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Short__equals$java_lang_Object$
	mov ebx, __method__java_lang_Short__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Short__clone
	mov ebx, __method__java_lang_Short__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Short__toString
	mov ebx, __method__java_lang_Short__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Class
mov ebx, __ref_SIT_java_lang_Class
mov [ebx], eax

	extern __method__java_lang_Class__hashCode
	mov ebx, __method__java_lang_Class__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Class__equals$java_lang_Object$
	mov ebx, __method__java_lang_Class__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Class__clone
	mov ebx, __method__java_lang_Class__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Class__toString
	mov ebx, __method__java_lang_Class__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Object
mov ebx, __ref_SIT_java_lang_Object
mov [ebx], eax

	extern __method__java_lang_Object__hashCode
	mov ebx, __method__java_lang_Object__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Object__equals$java_lang_Object$
	mov ebx, __method__java_lang_Object__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Object__clone
	mov ebx, __method__java_lang_Object__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Object__toString
	mov ebx, __method__java_lang_Object__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_String
mov ebx, __ref_SIT_java_lang_String
mov [ebx], eax

	extern __method__java_lang_String__hashCode
	mov ebx, __method__java_lang_String__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_String__equals$java_lang_Object$
	mov ebx, __method__java_lang_String__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_String__clone
	mov ebx, __method__java_lang_String__clone
	mov [eax + 8], ebx

	extern __method__java_lang_String__toString
	mov ebx, __method__java_lang_String__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Character
mov ebx, __ref_SIT_java_lang_Character
mov [ebx], eax

	extern __method__java_lang_Character__hashCode
	mov ebx, __method__java_lang_Character__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Character__equals$java_lang_Object$
	mov ebx, __method__java_lang_Character__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Character__clone
	mov ebx, __method__java_lang_Character__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Character__toString
	mov ebx, __method__java_lang_Character__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Number
mov ebx, __ref_SIT_java_lang_Number
mov [ebx], eax

	extern __method__java_lang_Number__hashCode
	mov ebx, __method__java_lang_Number__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Number__equals$java_lang_Object$
	mov ebx, __method__java_lang_Number__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Number__clone
	mov ebx, __method__java_lang_Number__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Number__toString
	mov ebx, __method__java_lang_Number__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_java_lang_Boolean
mov ebx, __ref_SIT_java_lang_Boolean
mov [ebx], eax

	extern __method__java_lang_Boolean__hashCode
	mov ebx, __method__java_lang_Boolean__hashCode
	mov [eax + 0], ebx

	extern __method__java_lang_Boolean__equals$java_lang_Object$
	mov ebx, __method__java_lang_Boolean__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__java_lang_Boolean__clone
	mov ebx, __method__java_lang_Boolean__clone
	mov [eax + 8], ebx

	extern __method__java_lang_Boolean__toString
	mov ebx, __method__java_lang_Boolean__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Hello
mov ebx, __ref_SIT_Hello
mov [ebx], eax

	extern __method__Hello__hashCode
	mov ebx, __method__Hello__hashCode
	mov [eax + 0], ebx

	extern __method__Hello__equals$java_lang_Object$
	mov ebx, __method__Hello__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Hello__clone
	mov ebx, __method__Hello__clone
	mov [eax + 8], ebx

	extern __method__Hello__toString
	mov ebx, __method__Hello__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_foo_bar
mov ebx, __ref_SIT_foo_bar
mov [ebx], eax

	extern __method__foo_bar__hashCode
	mov ebx, __method__foo_bar__hashCode
	mov [eax + 0], ebx

	extern __method__foo_bar__equals$java_lang_Object$
	mov ebx, __method__foo_bar__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__foo_bar__clone
	mov ebx, __method__foo_bar__clone
	mov [eax + 8], ebx

	extern __method__foo_bar__toString
	mov ebx, __method__foo_bar__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Main
mov ebx, __ref_SIT_Main
mov [ebx], eax

	extern __method__Main__hashCode
	mov ebx, __method__Main__hashCode
	mov [eax + 0], ebx

	extern __method__Main__equals$java_lang_Object$
	mov ebx, __method__Main__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Main__clone
	mov ebx, __method__Main__clone
	mov [eax + 8], ebx

	extern __method__Main__toString
	mov ebx, __method__Main__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_Static
mov ebx, __ref_SIT_Static
mov [ebx], eax

	extern __method__Static__hashCode
	mov ebx, __method__Static__hashCode
	mov [eax + 0], ebx

	extern __method__Static__equals$java_lang_Object$
	mov ebx, __method__Static__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__Static__clone
	mov ebx, __method__Static__clone
	mov [eax + 8], ebx

	extern __method__Static__toString
	mov ebx, __method__Static__toString
	mov [eax + 12], ebx

mov eax, 16
extern _malloc
call _malloc

extern __ref_SIT_A
mov ebx, __ref_SIT_A
mov [ebx], eax

	extern __method__A__hashCode
	mov ebx, __method__A__hashCode
	mov [eax + 0], ebx

	extern __method__A__equals$java_lang_Object$
	mov ebx, __method__A__equals$java_lang_Object$
	mov [eax + 4], ebx

	extern __method__A__clone
	mov ebx, __method__A__clone
	mov [eax + 8], ebx

	extern __method__A__toString
	mov ebx, __method__A__toString
	mov [eax + 12], ebx
		global __STATIC_method__A__test$int$int$
	__STATIC_method__A__test$int$int$:
		push ebp
		mov ebp, esp

				sub esp,4
		mov eax, 42

		mov [ebp-4], eax
		sub esp,4
		mov eax, 42

		mov [ebp-8], eax
		sub esp,4
		mov eax, 42

		mov [ebp-12], eax
		sub esp,4
		mov eax, 42

		mov [ebp-16], eax
		sub esp,4
		mov eax, 42

		mov [ebp-20], eax
		sub esp,4
		mov eax, 42

		mov [ebp-24], eax
		sub esp,4
		mov eax, 42

		mov [ebp-28], eax
		sub esp,4
		mov eax, 42

		mov [ebp-32], eax
		sub esp,4
		mov eax, 42

		mov [ebp-36], eax
		sub esp,4
		mov eax, 42

		mov [ebp-40], eax
		sub esp,4
		mov eax, 42

		mov [ebp-44], eax
		sub esp,4
		mov eax, 42

		mov [ebp-48], eax
		sub esp,4
		mov eax, 42

		mov [ebp-52], eax
		sub esp,4
		mov eax, 42

		mov [ebp-56], eax
		sub esp,4
		mov eax, 42

		mov [ebp-60], eax
		sub esp,4
		mov eax, 42

		mov [ebp-64], eax
		sub esp,4
		mov eax, 42

		mov [ebp-68], eax
		sub esp,4
		mov eax, 42

		mov [ebp-72], eax
		sub esp,4
		mov eax, 42

		mov [ebp-76], eax
		sub esp,4
		mov eax, 42

		mov [ebp-80], eax
		sub esp,4
		mov eax, 42

		mov [ebp-84], eax
		sub esp,4
		mov eax, 42

		mov [ebp-88], eax
		sub esp,4
		mov eax, 42

		mov [ebp-92], eax
		sub esp,4
		mov eax, 42

		mov [ebp-96], eax
		sub esp,4
		mov eax, 42

		mov [ebp-100], eax
		sub esp,4
		mov eax, 42

		mov [ebp-104], eax
		sub esp,4
		mov eax, 42

		mov [ebp-108], eax
		sub esp,4
		mov eax, 42

		mov [ebp-112], eax
		sub esp,4
		mov eax, 42

		mov [ebp-116], eax
		sub esp,4
		mov eax, 42

		mov [ebp-120], eax
		sub esp,4
		mov eax, 42

		mov [ebp-124], eax
		sub esp,4
		mov eax, 42

		mov [ebp-128], eax
		sub esp,4
		mov eax, 42

		mov [ebp-132], eax
		sub esp,4
		mov eax, 42

		mov [ebp-136], eax
		sub esp,4
		mov eax, 42

		mov [ebp-140], eax
		sub esp,4
		mov eax, 42

		mov [ebp-144], eax
		sub esp,4
		mov eax, 42

		mov [ebp-148], eax
		sub esp,4
		mov eax, 42

		mov [ebp-152], eax
		sub esp,4
		mov eax, 42

		mov [ebp-156], eax
		sub esp,4
		mov eax, 42

		mov [ebp-160], eax
		sub esp,4
		mov eax, 42

		mov [ebp-164], eax
		sub esp,4
		mov eax, 42

		mov [ebp-168], eax
		sub esp,4
		mov eax, 42

		mov [ebp-172], eax
		sub esp,4
		mov eax, 42

		mov [ebp-176], eax
		sub esp,4
		mov eax, 42

		mov [ebp-180], eax
		sub esp,4
		mov eax, 42

		mov [ebp-184], eax
		sub esp,4
		mov eax, 42

		mov [ebp-188], eax
		sub esp,4
		mov eax, 42

		mov [ebp-192], eax
		sub esp,4
		mov eax, 42

		mov [ebp-196], eax
		sub esp,4
		mov eax, 42

		mov [ebp-200], eax
		sub esp,4
		mov eax, 42

		mov [ebp-204], eax
		sub esp,4
		mov eax, 42

		mov [ebp-208], eax
		sub esp,4
		mov eax, 42

		mov [ebp-212], eax
		sub esp,4
		mov eax, 42

		mov [ebp-216], eax
		sub esp,4
		mov eax, 42

		mov [ebp-220], eax
		sub esp,4
		mov eax, 42

		mov [ebp-224], eax
		sub esp,4
		mov eax, 42

		mov [ebp-228], eax
		sub esp,4
		mov eax, 42

		mov [ebp-232], eax
		sub esp,4
		mov eax, 42

		mov [ebp-236], eax
		sub esp,4
		mov eax, 42

		mov [ebp-240], eax
		sub esp,4
		mov eax, 42

		mov [ebp-244], eax
		sub esp,4
		mov eax, 42

		mov [ebp-248], eax
		sub esp,4
		mov eax, 42

		mov [ebp-252], eax
		sub esp,4
		mov eax, 42

		mov [ebp-256], eax
		sub esp,4
		mov eax, 42

		mov [ebp-260], eax
		sub esp,4
		mov eax, 42

		mov [ebp-264], eax
		sub esp,4
		mov eax, 42

		mov [ebp-268], eax
		sub esp,4
		mov eax, 42

		mov [ebp-272], eax
		sub esp,4
		mov eax, 42

		mov [ebp-276], eax
		sub esp,4
		mov eax, 42

		mov [ebp-280], eax
		sub esp,4
		mov eax, 42

		mov [ebp-284], eax
		sub esp,4
		mov eax, 42

		mov [ebp-288], eax
		sub esp,4
		mov eax, 42

		mov [ebp-292], eax
		sub esp,4
		mov eax, 42

		mov [ebp-296], eax
		sub esp,4
		mov eax, 42

		mov [ebp-300], eax
		sub esp,4
		mov eax, 42

		mov [ebp-304], eax
		sub esp,4
		mov eax, 42

		mov [ebp-308], eax
		sub esp,4
		mov eax, 42

		mov [ebp-312], eax
		sub esp,4
		mov eax, 42

		mov [ebp-316], eax
		sub esp,4
		mov eax, 42

		mov [ebp-320], eax
		sub esp,4
		mov eax, 42

		mov [ebp-324], eax
		sub esp,4
		mov eax, 42

		mov [ebp-328], eax
		sub esp,4
		mov eax, 42

		mov [ebp-332], eax
		sub esp,4
		mov eax, 42

		mov [ebp-336], eax
		sub esp,4
		mov eax, 42

		mov [ebp-340], eax
		sub esp,4
		mov eax, 42

		mov [ebp-344], eax
		sub esp,4
		mov eax, 42

		mov [ebp-348], eax
		sub esp,4
		mov eax, 42

		mov [ebp-352], eax
		sub esp,4
		mov eax, 42

		mov [ebp-356], eax
		sub esp,4
		mov eax, 42

		mov [ebp-360], eax
		sub esp,4
		mov eax, 42

		mov [ebp-364], eax
		sub esp,4
		mov eax, 42

		mov [ebp-368], eax
		sub esp,4
		mov eax, 42

		mov [ebp-372], eax
		sub esp,4
		mov eax, 42

		mov [ebp-376], eax
		sub esp,4
		mov eax, 42

		mov [ebp-380], eax
		sub esp,4
		mov eax, 42

		mov [ebp-384], eax
		sub esp,4
		mov eax, 42

		mov [ebp-388], eax
		sub esp,4
		mov eax, 42

		mov [ebp-392], eax
		sub esp,4
		mov eax, 42

		mov [ebp-396], eax
		sub esp,4
		mov eax, 42

		mov [ebp-400], eax
		sub esp,4
		mov eax, 42

		mov [ebp-404], eax
		sub esp,4
		mov eax, 42

		mov [ebp-408], eax
		sub esp,4
		mov eax, 42

		mov [ebp-412], eax
		sub esp,4
		mov eax, 42

		mov [ebp-416], eax
		sub esp,4
		mov eax, 42

		mov [ebp-420], eax
		sub esp,4
		mov eax, 42

		mov [ebp-424], eax
		sub esp,4
		mov eax, 42

		mov [ebp-428], eax
		sub esp,4
		mov eax, 42

		mov [ebp-432], eax
		sub esp,4
		mov eax, 42

		mov [ebp-436], eax
		sub esp,4
		mov eax, 42

		mov [ebp-440], eax
		sub esp,4
		mov eax, 42

		mov [ebp-444], eax
		sub esp,4
		mov eax, 42

		mov [ebp-448], eax
		sub esp,4
		mov eax, 42

		mov [ebp-452], eax
		sub esp,4
		mov eax, 42

		mov [ebp-456], eax
		sub esp,4
		mov eax, 42

		mov [ebp-460], eax
		sub esp,4
		mov eax, 42

		mov [ebp-464], eax
		sub esp,4
		mov eax, 42

		mov [ebp-468], eax
		sub esp,4
		mov eax, 42

		mov [ebp-472], eax
		sub esp,4
		mov eax, 42

		mov [ebp-476], eax
		sub esp,4
		mov eax, 42

		mov [ebp-480], eax
		sub esp,4
		mov eax, 42

		mov [ebp-484], eax
		sub esp,4
		mov eax, 42

		mov [ebp-488], eax
		sub esp,4
		mov eax, 42

		mov [ebp-492], eax
		sub esp,4
		mov eax, 42

		mov [ebp-496], eax
		sub esp,4
		mov eax, 42

		mov [ebp-500], eax
		sub esp,4
		mov eax, 42

		mov [ebp-504], eax
		sub esp,4
		mov eax, 42

		mov [ebp-508], eax
		sub esp,4
		mov eax, 42

		mov [ebp-512], eax
		sub esp,4
		mov eax, 42

		mov [ebp-516], eax
		sub esp,4
		mov eax, 42

		mov [ebp-520], eax
		sub esp,4
		mov eax, 42

		mov [ebp-524], eax
		sub esp,4
		mov eax, 42

		mov [ebp-528], eax
		sub esp,4
		mov eax, 42

		mov [ebp-532], eax
		sub esp,4
		mov eax, 42

		mov [ebp-536], eax
		sub esp,4
		mov eax, 42

		mov [ebp-540], eax
		sub esp,4
		mov eax, 42

		mov [ebp-544], eax
		sub esp,4
		mov eax, 42

		mov [ebp-548], eax
		sub esp,4
		mov eax, 42

		mov [ebp-552], eax
		sub esp,4
		mov eax, 42

		mov [ebp-556], eax
		sub esp,4
		mov eax, 42

		mov [ebp-560], eax
		sub esp,4
		mov eax, 42

		mov [ebp-564], eax
		sub esp,4
		mov eax, 42

		mov [ebp-568], eax
		sub esp,4
		mov eax, 42

		mov [ebp-572], eax
		sub esp,4
		mov eax, 42

		mov [ebp-576], eax
		sub esp,4
		mov eax, 42

		mov [ebp-580], eax
		sub esp,4
		mov eax, 42

		mov [ebp-584], eax
		sub esp,4
		mov eax, 42

		mov [ebp-588], eax
		sub esp,4
		mov eax, 42

		mov [ebp-592], eax
		sub esp,4
		mov eax, 42

		mov [ebp-596], eax
		sub esp,4
		mov eax, 42

		mov [ebp-600], eax
		sub esp,4
		mov eax, 42

		mov [ebp-604], eax
		sub esp,4
		mov eax, 42

		mov [ebp-608], eax
		sub esp,4
		mov eax, 42

		mov [ebp-612], eax
		sub esp,4
		mov eax, 42

		mov [ebp-616], eax
		sub esp,4
		mov eax, 42

		mov [ebp-620], eax
		sub esp,4
		mov eax, 42

		mov [ebp-624], eax
		sub esp,4
		mov eax, 42

		mov [ebp-628], eax
		sub esp,4
		mov eax, 42

		mov [ebp-632], eax
		sub esp,4
		mov eax, 42

		mov [ebp-636], eax
		sub esp,4
		mov eax, 42

		mov [ebp-640], eax
		sub esp,4
		mov eax, 42

		mov [ebp-644], eax
		sub esp,4
		mov eax, 42

		mov [ebp-648], eax
		sub esp,4
		mov eax, 42

		mov [ebp-652], eax
		sub esp,4
		mov eax, 42

		mov [ebp-656], eax
		sub esp,4
		mov eax, 42

		mov [ebp-660], eax
		sub esp,4
		mov eax, 42

		mov [ebp-664], eax
		sub esp,4
		mov eax, 42

		mov [ebp-668], eax
		sub esp,4
		mov eax, 42

		mov [ebp-672], eax
		sub esp,4
		mov eax, 42

		mov [ebp-676], eax
		sub esp,4
		mov eax, 42

		mov [ebp-680], eax
		sub esp,4
		mov eax, 42

		mov [ebp-684], eax
		sub esp,4
		mov eax, 42

		mov [ebp-688], eax
		sub esp,4
		mov eax, 42

		mov [ebp-692], eax
		sub esp,4
		mov eax, 42

		mov [ebp-696], eax
		sub esp,4
		mov eax, 42

		mov [ebp-700], eax
		sub esp,4
		mov eax, 42

		mov [ebp-704], eax
		sub esp,4
		mov eax, 42

		mov [ebp-708], eax
		sub esp,4
		mov eax, 42

		mov [ebp-712], eax
		sub esp,4
		mov eax, 42

		mov [ebp-716], eax
		sub esp,4
		mov eax, 42

		mov [ebp-720], eax
		sub esp,4
		mov eax, 42

		mov [ebp-724], eax
		sub esp,4
		mov eax, 42

		mov [ebp-728], eax
		sub esp,4
		mov eax, 42

		mov [ebp-732], eax
		sub esp,4
		mov eax, 42

		mov [ebp-736], eax
		sub esp,4
		mov eax, 42

		mov [ebp-740], eax
		sub esp,4
		mov eax, 42

		mov [ebp-744], eax
		sub esp,4
		mov eax, 42

		mov [ebp-748], eax
		sub esp,4
		mov eax, 42

		mov [ebp-752], eax
		sub esp,4
		mov eax, 42

		mov [ebp-756], eax
		sub esp,4
		mov eax, 42

		mov [ebp-760], eax
		sub esp,4
		mov eax, 42

		mov [ebp-764], eax
		sub esp,4
		mov eax, 42

		mov [ebp-768], eax
		sub esp,4
		mov eax, 42

		mov [ebp-772], eax
		sub esp,4
		mov eax, 42

		mov [ebp-776], eax
		sub esp,4
		mov eax, 42

		mov [ebp-780], eax
		sub esp,4
		mov eax, 42

		mov [ebp-784], eax
		sub esp,4
		mov eax, 42

		mov [ebp-788], eax
		sub esp,4
		mov eax, 42

		mov [ebp-792], eax
		sub esp,4
		mov eax, 42

		mov [ebp-796], eax
		sub esp,4
		mov eax, 42

		mov [ebp-800], eax
		sub esp,4
		mov eax, 42

		mov [ebp-804], eax
		sub esp,4
		mov eax, 42

		mov [ebp-808], eax
		sub esp,4
		mov eax, 42

		mov [ebp-812], eax
		sub esp,4
		mov eax, 42

		mov [ebp-816], eax
		sub esp,4
		mov eax, 42

		mov [ebp-820], eax
		sub esp,4
		mov eax, 42

		mov [ebp-824], eax
		sub esp,4
		mov eax, 42

		mov [ebp-828], eax
		sub esp,4
		mov eax, 42

		mov [ebp-832], eax
		sub esp,4
		mov eax, 42

		mov [ebp-836], eax
		sub esp,4
		mov eax, 42

		mov [ebp-840], eax
		sub esp,4
		mov eax, 42

		mov [ebp-844], eax
		sub esp,4
		mov eax, 42

		mov [ebp-848], eax
		sub esp,4
		mov eax, 42

		mov [ebp-852], eax
		sub esp,4
		mov eax, 42

		mov [ebp-856], eax
		sub esp,4
		mov eax, 42

		mov [ebp-860], eax
		sub esp,4
		mov eax, 42

		mov [ebp-864], eax
		sub esp,4
		mov eax, 42

		mov [ebp-868], eax
		sub esp,4
		mov eax, 42

		mov [ebp-872], eax
		sub esp,4
		mov eax, 42

		mov [ebp-876], eax
		sub esp,4
		mov eax, 42

		mov [ebp-880], eax
		sub esp,4
		mov eax, 42

		mov [ebp-884], eax
		sub esp,4
		mov eax, 42

		mov [ebp-888], eax
		sub esp,4
		mov eax, 42

		mov [ebp-892], eax
		sub esp,4
		mov eax, 42

		mov [ebp-896], eax
		sub esp,4
		mov eax, 42

		mov [ebp-900], eax
		sub esp,4
		mov eax, 42

		mov [ebp-904], eax
		sub esp,4
		mov eax, 42

		mov [ebp-908], eax
		sub esp,4
		mov eax, 42

		mov [ebp-912], eax
		sub esp,4
		mov eax, 42

		mov [ebp-916], eax
		sub esp,4
		mov eax, 42

		mov [ebp-920], eax
		sub esp,4
		mov eax, 42

		mov [ebp-924], eax
		sub esp,4
		mov eax, 42

		mov [ebp-928], eax
		sub esp,4
		mov eax, 42

		mov [ebp-932], eax
		sub esp,4
		mov eax, 42

		mov [ebp-936], eax
		sub esp,4
		mov eax, 42

		mov [ebp-940], eax
		sub esp,4
		mov eax, 42

		mov [ebp-944], eax
		sub esp,4
		mov eax, 42

		mov [ebp-948], eax
		sub esp,4
		mov eax, 42

		mov [ebp-952], eax
		sub esp,4
		mov eax, 42

		mov [ebp-956], eax
		sub esp,4
		mov eax, 42

		mov [ebp-960], eax
		sub esp,4
		mov eax, 42

		mov [ebp-964], eax
		sub esp,4
		mov eax, 42

		mov [ebp-968], eax
		sub esp,4
		mov eax, 42

		mov [ebp-972], eax
		sub esp,4
		mov eax, 42

		mov [ebp-976], eax
		sub esp,4
		mov eax, 42

		mov [ebp-980], eax
		sub esp,4
		mov eax, 42

		mov [ebp-984], eax
		sub esp,4
		mov eax, 42

		mov [ebp-988], eax
		sub esp,4
		mov eax, 42

		mov [ebp-992], eax
		sub esp,4
		mov eax, 42

		mov [ebp-996], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1000], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1004], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1008], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1012], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1016], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1020], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1024], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1028], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1032], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1036], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1040], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1044], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1048], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1052], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1056], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1060], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1064], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1068], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1072], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1076], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1080], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1084], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1088], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1092], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1096], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1100], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1104], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1108], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1112], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1116], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1120], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1124], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1128], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1132], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1136], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1140], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1144], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1148], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1152], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1156], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1160], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1164], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1168], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1172], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1176], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1180], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1184], eax
		sub esp,4
		mov eax, 123

		mov [ebp-1188], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1192], eax
		sub esp,4
		mov eax, 40

		mov [ebp-1196], eax
		sub esp,4
		mov eax, 42

		mov [ebp-1200], eax
		mov eax, 123
		jmp _method_return___STATIC_method__A__test$int$int$

		_method_return___STATIC_method__A__test$int$int$:
			pop ebp
			ret

;; -----Constructors-----
		extern __constructor__A__A
	__constructor__A__A:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
		mov eax, __constuctor__java_lang_Object__Object
		call eax
		sub esp,4
;; Field init, push object to stack
		mov eax, [ebp + 8]
		push eax
;; Field init end, pop object
		add esp,4
;; Constructor Body
;; Epilogue
		mov esp, ebp
		pop ebp
		ret
