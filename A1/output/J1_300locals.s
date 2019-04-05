	global __class_J1_300locals
__class_J1_300locals:

section .data

		global __ref_SIT_J1_300locals
	__ref_SIT_J1_300locals:
		dd 0

		global __ref_PARENTS_J1_300locals
	__ref_PARENTS_J1_300locals:
		dd 1000010000000000b

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
		dd __STATIC_method__J1_300locals__test

section .text

;; -----Methods-----
	global _start
_start:

mov eax, 16
extern __malloc
call __malloc

extern __ref_SIT_java_io_OutputStream
mov ebx, __ref_SIT_java_io_OutputStream
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
extern __malloc
call __malloc

extern __ref_SIT_java_io_PrintStream
mov ebx, __ref_SIT_java_io_PrintStream
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Boolean
mov ebx, __ref_SIT_java_lang_Boolean
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Byte
mov ebx, __ref_SIT_java_lang_Byte
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Character
mov ebx, __ref_SIT_java_lang_Character
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Class
mov ebx, __ref_SIT_java_lang_Class
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Integer
mov ebx, __ref_SIT_java_lang_Integer
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Number
mov ebx, __ref_SIT_java_lang_Number
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
extern __malloc
call __malloc

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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_Short
mov ebx, __ref_SIT_java_lang_Short
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_String
mov ebx, __ref_SIT_java_lang_String
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
extern __malloc
call __malloc

extern __ref_SIT_java_lang_System
mov ebx, __ref_SIT_java_lang_System
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
extern __malloc
call __malloc

extern __ref_SIT_java_util_Arrays
mov ebx, __ref_SIT_java_util_Arrays
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
extern __malloc
call __malloc

mov ebx, __ref_SIT_J1_300locals
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

call @@@@main
mov ebx, eax
mov eax, 1
int 0x80


global @@@@main
@@@@main:
		global __STATIC_method__J1_300locals__test
	__STATIC_method__J1_300locals__test:
		push ebp
		mov ebp, esp

				;; ---declare a0
		mov eax, 42
		push eax

		;; ---declare a1
		mov eax, 42
		push eax

		;; ---declare a2
		mov eax, 42
		push eax

		;; ---declare a3
		mov eax, 42
		push eax

		;; ---declare a4
		mov eax, 42
		push eax

		;; ---declare a5
		mov eax, 42
		push eax

		;; ---declare a6
		mov eax, 42
		push eax

		;; ---declare a7
		mov eax, 42
		push eax

		;; ---declare a8
		mov eax, 42
		push eax

		;; ---declare a9
		mov eax, 42
		push eax

		;; ---declare a10
		mov eax, 42
		push eax

		;; ---declare a11
		mov eax, 42
		push eax

		;; ---declare a12
		mov eax, 42
		push eax

		;; ---declare a13
		mov eax, 42
		push eax

		;; ---declare a14
		mov eax, 42
		push eax

		;; ---declare a15
		mov eax, 42
		push eax

		;; ---declare a16
		mov eax, 42
		push eax

		;; ---declare a17
		mov eax, 42
		push eax

		;; ---declare a18
		mov eax, 42
		push eax

		;; ---declare a19
		mov eax, 42
		push eax

		;; ---declare a20
		mov eax, 42
		push eax

		;; ---declare a21
		mov eax, 42
		push eax

		;; ---declare a22
		mov eax, 42
		push eax

		;; ---declare a23
		mov eax, 42
		push eax

		;; ---declare a24
		mov eax, 42
		push eax

		;; ---declare a25
		mov eax, 42
		push eax

		;; ---declare a26
		mov eax, 42
		push eax

		;; ---declare a27
		mov eax, 42
		push eax

		;; ---declare a28
		mov eax, 42
		push eax

		;; ---declare a29
		mov eax, 42
		push eax

		;; ---declare a30
		mov eax, 42
		push eax

		;; ---declare a31
		mov eax, 42
		push eax

		;; ---declare a32
		mov eax, 42
		push eax

		;; ---declare a33
		mov eax, 42
		push eax

		;; ---declare a34
		mov eax, 42
		push eax

		;; ---declare a35
		mov eax, 42
		push eax

		;; ---declare a36
		mov eax, 42
		push eax

		;; ---declare a37
		mov eax, 42
		push eax

		;; ---declare a38
		mov eax, 42
		push eax

		;; ---declare a39
		mov eax, 42
		push eax

		;; ---declare a40
		mov eax, 42
		push eax

		;; ---declare a41
		mov eax, 42
		push eax

		;; ---declare a42
		mov eax, 42
		push eax

		;; ---declare a43
		mov eax, 42
		push eax

		;; ---declare a44
		mov eax, 42
		push eax

		;; ---declare a45
		mov eax, 42
		push eax

		;; ---declare a46
		mov eax, 42
		push eax

		;; ---declare a47
		mov eax, 42
		push eax

		;; ---declare a48
		mov eax, 42
		push eax

		;; ---declare a49
		mov eax, 42
		push eax

		;; ---declare a50
		mov eax, 42
		push eax

		;; ---declare a51
		mov eax, 42
		push eax

		;; ---declare a52
		mov eax, 42
		push eax

		;; ---declare a53
		mov eax, 42
		push eax

		;; ---declare a54
		mov eax, 42
		push eax

		;; ---declare a55
		mov eax, 42
		push eax

		;; ---declare a56
		mov eax, 42
		push eax

		;; ---declare a57
		mov eax, 42
		push eax

		;; ---declare a58
		mov eax, 42
		push eax

		;; ---declare a59
		mov eax, 42
		push eax

		;; ---declare a60
		mov eax, 42
		push eax

		;; ---declare a61
		mov eax, 42
		push eax

		;; ---declare a62
		mov eax, 42
		push eax

		;; ---declare a63
		mov eax, 42
		push eax

		;; ---declare a64
		mov eax, 42
		push eax

		;; ---declare a65
		mov eax, 42
		push eax

		;; ---declare a66
		mov eax, 42
		push eax

		;; ---declare a67
		mov eax, 42
		push eax

		;; ---declare a68
		mov eax, 42
		push eax

		;; ---declare a69
		mov eax, 42
		push eax

		;; ---declare a70
		mov eax, 42
		push eax

		;; ---declare a71
		mov eax, 42
		push eax

		;; ---declare a72
		mov eax, 42
		push eax

		;; ---declare a73
		mov eax, 42
		push eax

		;; ---declare a74
		mov eax, 42
		push eax

		;; ---declare a75
		mov eax, 42
		push eax

		;; ---declare a76
		mov eax, 42
		push eax

		;; ---declare a77
		mov eax, 42
		push eax

		;; ---declare a78
		mov eax, 42
		push eax

		;; ---declare a79
		mov eax, 42
		push eax

		;; ---declare a80
		mov eax, 42
		push eax

		;; ---declare a81
		mov eax, 42
		push eax

		;; ---declare a82
		mov eax, 42
		push eax

		;; ---declare a83
		mov eax, 42
		push eax

		;; ---declare a84
		mov eax, 42
		push eax

		;; ---declare a85
		mov eax, 42
		push eax

		;; ---declare a86
		mov eax, 42
		push eax

		;; ---declare a87
		mov eax, 42
		push eax

		;; ---declare a88
		mov eax, 42
		push eax

		;; ---declare a89
		mov eax, 42
		push eax

		;; ---declare a90
		mov eax, 42
		push eax

		;; ---declare a91
		mov eax, 42
		push eax

		;; ---declare a92
		mov eax, 42
		push eax

		;; ---declare a93
		mov eax, 42
		push eax

		;; ---declare a94
		mov eax, 42
		push eax

		;; ---declare a95
		mov eax, 42
		push eax

		;; ---declare a96
		mov eax, 42
		push eax

		;; ---declare a97
		mov eax, 42
		push eax

		;; ---declare a98
		mov eax, 42
		push eax

		;; ---declare a99
		mov eax, 42
		push eax

		;; ---declare a100
		mov eax, 42
		push eax

		;; ---declare a101
		mov eax, 42
		push eax

		;; ---declare a102
		mov eax, 42
		push eax

		;; ---declare a103
		mov eax, 42
		push eax

		;; ---declare a104
		mov eax, 42
		push eax

		;; ---declare a105
		mov eax, 42
		push eax

		;; ---declare a106
		mov eax, 42
		push eax

		;; ---declare a107
		mov eax, 42
		push eax

		;; ---declare a108
		mov eax, 42
		push eax

		;; ---declare a109
		mov eax, 42
		push eax

		;; ---declare a110
		mov eax, 42
		push eax

		;; ---declare a111
		mov eax, 42
		push eax

		;; ---declare a112
		mov eax, 42
		push eax

		;; ---declare a113
		mov eax, 42
		push eax

		;; ---declare a114
		mov eax, 42
		push eax

		;; ---declare a115
		mov eax, 42
		push eax

		;; ---declare a116
		mov eax, 42
		push eax

		;; ---declare a117
		mov eax, 42
		push eax

		;; ---declare a118
		mov eax, 42
		push eax

		;; ---declare a119
		mov eax, 42
		push eax

		;; ---declare a120
		mov eax, 42
		push eax

		;; ---declare a121
		mov eax, 42
		push eax

		;; ---declare a122
		mov eax, 42
		push eax

		;; ---declare a123
		mov eax, 42
		push eax

		;; ---declare a124
		mov eax, 42
		push eax

		;; ---declare a125
		mov eax, 42
		push eax

		;; ---declare a126
		mov eax, 42
		push eax

		;; ---declare a127
		mov eax, 42
		push eax

		;; ---declare a128
		mov eax, 42
		push eax

		;; ---declare a129
		mov eax, 42
		push eax

		;; ---declare a130
		mov eax, 42
		push eax

		;; ---declare a131
		mov eax, 42
		push eax

		;; ---declare a132
		mov eax, 42
		push eax

		;; ---declare a133
		mov eax, 42
		push eax

		;; ---declare a134
		mov eax, 42
		push eax

		;; ---declare a135
		mov eax, 42
		push eax

		;; ---declare a136
		mov eax, 42
		push eax

		;; ---declare a137
		mov eax, 42
		push eax

		;; ---declare a138
		mov eax, 42
		push eax

		;; ---declare a139
		mov eax, 42
		push eax

		;; ---declare a140
		mov eax, 42
		push eax

		;; ---declare a141
		mov eax, 42
		push eax

		;; ---declare a142
		mov eax, 42
		push eax

		;; ---declare a143
		mov eax, 42
		push eax

		;; ---declare a144
		mov eax, 42
		push eax

		;; ---declare a145
		mov eax, 42
		push eax

		;; ---declare a146
		mov eax, 42
		push eax

		;; ---declare a147
		mov eax, 42
		push eax

		;; ---declare a148
		mov eax, 42
		push eax

		;; ---declare a149
		mov eax, 42
		push eax

		;; ---declare a150
		mov eax, 42
		push eax

		;; ---declare a151
		mov eax, 42
		push eax

		;; ---declare a152
		mov eax, 42
		push eax

		;; ---declare a153
		mov eax, 42
		push eax

		;; ---declare a154
		mov eax, 42
		push eax

		;; ---declare a155
		mov eax, 42
		push eax

		;; ---declare a156
		mov eax, 42
		push eax

		;; ---declare a157
		mov eax, 42
		push eax

		;; ---declare a158
		mov eax, 42
		push eax

		;; ---declare a159
		mov eax, 42
		push eax

		;; ---declare a160
		mov eax, 42
		push eax

		;; ---declare a161
		mov eax, 42
		push eax

		;; ---declare a162
		mov eax, 42
		push eax

		;; ---declare a163
		mov eax, 42
		push eax

		;; ---declare a164
		mov eax, 42
		push eax

		;; ---declare a165
		mov eax, 42
		push eax

		;; ---declare a166
		mov eax, 42
		push eax

		;; ---declare a167
		mov eax, 42
		push eax

		;; ---declare a168
		mov eax, 42
		push eax

		;; ---declare a169
		mov eax, 42
		push eax

		;; ---declare a170
		mov eax, 42
		push eax

		;; ---declare a171
		mov eax, 42
		push eax

		;; ---declare a172
		mov eax, 42
		push eax

		;; ---declare a173
		mov eax, 42
		push eax

		;; ---declare a174
		mov eax, 42
		push eax

		;; ---declare a175
		mov eax, 42
		push eax

		;; ---declare a176
		mov eax, 42
		push eax

		;; ---declare a177
		mov eax, 42
		push eax

		;; ---declare a178
		mov eax, 42
		push eax

		;; ---declare a179
		mov eax, 42
		push eax

		;; ---declare a180
		mov eax, 42
		push eax

		;; ---declare a181
		mov eax, 42
		push eax

		;; ---declare a182
		mov eax, 42
		push eax

		;; ---declare a183
		mov eax, 42
		push eax

		;; ---declare a184
		mov eax, 42
		push eax

		;; ---declare a185
		mov eax, 42
		push eax

		;; ---declare a186
		mov eax, 42
		push eax

		;; ---declare a187
		mov eax, 42
		push eax

		;; ---declare a188
		mov eax, 42
		push eax

		;; ---declare a189
		mov eax, 42
		push eax

		;; ---declare a190
		mov eax, 42
		push eax

		;; ---declare a191
		mov eax, 42
		push eax

		;; ---declare a192
		mov eax, 42
		push eax

		;; ---declare a193
		mov eax, 42
		push eax

		;; ---declare a194
		mov eax, 42
		push eax

		;; ---declare a195
		mov eax, 42
		push eax

		;; ---declare a196
		mov eax, 42
		push eax

		;; ---declare a197
		mov eax, 42
		push eax

		;; ---declare a198
		mov eax, 42
		push eax

		;; ---declare a199
		mov eax, 42
		push eax

		;; ---declare a200
		mov eax, 42
		push eax

		;; ---declare a201
		mov eax, 42
		push eax

		;; ---declare a202
		mov eax, 42
		push eax

		;; ---declare a203
		mov eax, 42
		push eax

		;; ---declare a204
		mov eax, 42
		push eax

		;; ---declare a205
		mov eax, 42
		push eax

		;; ---declare a206
		mov eax, 42
		push eax

		;; ---declare a207
		mov eax, 42
		push eax

		;; ---declare a208
		mov eax, 42
		push eax

		;; ---declare a209
		mov eax, 42
		push eax

		;; ---declare a210
		mov eax, 42
		push eax

		;; ---declare a211
		mov eax, 42
		push eax

		;; ---declare a212
		mov eax, 42
		push eax

		;; ---declare a213
		mov eax, 42
		push eax

		;; ---declare a214
		mov eax, 42
		push eax

		;; ---declare a215
		mov eax, 42
		push eax

		;; ---declare a216
		mov eax, 42
		push eax

		;; ---declare a217
		mov eax, 42
		push eax

		;; ---declare a218
		mov eax, 42
		push eax

		;; ---declare a219
		mov eax, 42
		push eax

		;; ---declare a220
		mov eax, 42
		push eax

		;; ---declare a221
		mov eax, 42
		push eax

		;; ---declare a222
		mov eax, 42
		push eax

		;; ---declare a223
		mov eax, 42
		push eax

		;; ---declare a224
		mov eax, 42
		push eax

		;; ---declare a225
		mov eax, 42
		push eax

		;; ---declare a226
		mov eax, 42
		push eax

		;; ---declare a227
		mov eax, 42
		push eax

		;; ---declare a228
		mov eax, 42
		push eax

		;; ---declare a229
		mov eax, 42
		push eax

		;; ---declare a230
		mov eax, 42
		push eax

		;; ---declare a231
		mov eax, 42
		push eax

		;; ---declare a232
		mov eax, 42
		push eax

		;; ---declare a233
		mov eax, 42
		push eax

		;; ---declare a234
		mov eax, 42
		push eax

		;; ---declare a235
		mov eax, 42
		push eax

		;; ---declare a236
		mov eax, 42
		push eax

		;; ---declare a237
		mov eax, 42
		push eax

		;; ---declare a238
		mov eax, 42
		push eax

		;; ---declare a239
		mov eax, 42
		push eax

		;; ---declare a240
		mov eax, 42
		push eax

		;; ---declare a241
		mov eax, 42
		push eax

		;; ---declare a242
		mov eax, 42
		push eax

		;; ---declare a243
		mov eax, 42
		push eax

		;; ---declare a244
		mov eax, 42
		push eax

		;; ---declare a245
		mov eax, 42
		push eax

		;; ---declare a246
		mov eax, 42
		push eax

		;; ---declare a247
		mov eax, 42
		push eax

		;; ---declare a248
		mov eax, 42
		push eax

		;; ---declare a249
		mov eax, 42
		push eax

		;; ---declare a250
		mov eax, 42
		push eax

		;; ---declare a251
		mov eax, 42
		push eax

		;; ---declare a252
		mov eax, 42
		push eax

		;; ---declare a253
		mov eax, 42
		push eax

		;; ---declare a254
		mov eax, 42
		push eax

		;; ---declare a255
		mov eax, 42
		push eax

		;; ---declare a256
		mov eax, 42
		push eax

		;; ---declare a257
		mov eax, 42
		push eax

		;; ---declare a258
		mov eax, 42
		push eax

		;; ---declare a259
		mov eax, 42
		push eax

		;; ---declare a260
		mov eax, 42
		push eax

		;; ---declare a261
		mov eax, 42
		push eax

		;; ---declare a262
		mov eax, 42
		push eax

		;; ---declare a263
		mov eax, 42
		push eax

		;; ---declare a264
		mov eax, 42
		push eax

		;; ---declare a265
		mov eax, 42
		push eax

		;; ---declare a266
		mov eax, 42
		push eax

		;; ---declare a267
		mov eax, 42
		push eax

		;; ---declare a268
		mov eax, 42
		push eax

		;; ---declare a269
		mov eax, 42
		push eax

		;; ---declare a270
		mov eax, 42
		push eax

		;; ---declare a271
		mov eax, 42
		push eax

		;; ---declare a272
		mov eax, 42
		push eax

		;; ---declare a273
		mov eax, 42
		push eax

		;; ---declare a274
		mov eax, 42
		push eax

		;; ---declare a275
		mov eax, 42
		push eax

		;; ---declare a276
		mov eax, 42
		push eax

		;; ---declare a277
		mov eax, 42
		push eax

		;; ---declare a278
		mov eax, 42
		push eax

		;; ---declare a279
		mov eax, 42
		push eax

		;; ---declare a280
		mov eax, 42
		push eax

		;; ---declare a281
		mov eax, 42
		push eax

		;; ---declare a282
		mov eax, 42
		push eax

		;; ---declare a283
		mov eax, 42
		push eax

		;; ---declare a284
		mov eax, 42
		push eax

		;; ---declare a285
		mov eax, 42
		push eax

		;; ---declare a286
		mov eax, 42
		push eax

		;; ---declare a287
		mov eax, 42
		push eax

		;; ---declare a288
		mov eax, 42
		push eax

		;; ---declare a289
		mov eax, 42
		push eax

		;; ---declare a290
		mov eax, 42
		push eax

		;; ---declare a291
		mov eax, 42
		push eax

		;; ---declare a292
		mov eax, 42
		push eax

		;; ---declare a293
		mov eax, 42
		push eax

		;; ---declare a294
		mov eax, 42
		push eax

		;; ---declare a295
		mov eax, 42
		push eax

		;; ---declare a296
		mov eax, 123
		push eax

		;; ---declare a297
		mov eax, 42
		push eax

		;; ---declare a298
		mov eax, 40
		push eax

		;; ---declare a299
		mov eax, 42
		push eax

		;; Local Var a296
		mov eax, ebp
		sub eax,1188
		mov eax, [eax]

		jmp _method_return___STATIC_method__J1_300locals__test

		_method_return___STATIC_method__J1_300locals__test:
			mov esp, ebp
			pop ebp
			ret

;; -----Constructors-----
		global __constructor__J1_300locals__J1_300locals
	__constructor__J1_300locals__J1_300locals:
		push ebp
		mov ebp, esp
		mov eax, [ebp + 8]
		push eax
			extern __constructor__java_lang_Object__Object
		mov eax, __constructor__java_lang_Object__Object
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
