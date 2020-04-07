
/tmp/poop/mbr:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	33 c0                	xor    ax,ax
   2:	8e d0                	mov    ss,ax
   4:	bc 00 7c             	mov    sp,0x7c00
   7:	8e c0                	mov    es,ax
   9:	8e d8                	mov    ds,ax
   b:	be 00 7c             	mov    si,0x7c00
   e:	bf 00 06             	mov    di,0x600
  11:	b9 00 02             	mov    cx,0x200
  14:	fc                   	cld    
  15:	f3 a4                	rep movs BYTE PTR es:[di],BYTE PTR ds:[si]
  17:	50                   	push   ax
  18:	68 1c 06             	push   0x61c
  1b:	cb                   	retf   
  1c:	fb                   	sti    
  1d:	b9 04 00             	mov    cx,0x4
  20:	bd be 07             	mov    bp,0x7be
  23:	80 7e 00 00          	cmp    BYTE PTR [bp+0x0],0x0
  27:	7c 0b                	jl     0x34
  29:	0f 85 0e 01          	jne    0x13b
  2d:	83 c5 10             	add    bp,0x10
  30:	e2 f1                	loop   0x23
  32:	cd 18                	int    0x18
  34:	88 56 00             	mov    BYTE PTR [bp+0x0],dl
  37:	55                   	push   bp
  38:	c6 46 11 05          	mov    BYTE PTR [bp+0x11],0x5
  3c:	c6 46 10 00          	mov    BYTE PTR [bp+0x10],0x0
  40:	b4 41                	mov    ah,0x41
  42:	bb aa 55             	mov    bx,0x55aa
  45:	cd 13                	int    0x13
  47:	5d                   	pop    bp
  48:	72 0f                	jb     0x59
  4a:	81 fb 55 aa          	cmp    bx,0xaa55
  4e:	75 09                	jne    0x59
  50:	f7 c1 01 00          	test   cx,0x1
  54:	74 03                	je     0x59
  56:	fe 46 10             	inc    BYTE PTR [bp+0x10]
  59:	66 60                	pusha  
  5b:	80 7e 10 00          	cmp    BYTE PTR [bp+0x10],0x0
  5f:	74 26                	je     0x87
  61:	66 68 00 00 00 00    	push   0x0
  67:	66 ff 76 08          	push   DWORD PTR [bp+0x8]
  6b:	68 00 00             	push   0x0
  6e:	68 00 7c             	push   0x7c00
  71:	68 01 00             	push   0x1
  74:	68 10 00             	push   0x10
  77:	b4 42                	mov    ah,0x42
  79:	8a 56 00             	mov    dl,BYTE PTR [bp+0x0]
  7c:	8b f4                	mov    si,sp
  7e:	cd 13                	int    0x13
  80:	9f                   	lahf   
  81:	83 c4 10             	add    sp,0x10
  84:	9e                   	sahf   
  85:	eb 14                	jmp    0x9b
  87:	b8 01 02             	mov    ax,0x201
  8a:	bb 00 7c             	mov    bx,0x7c00
  8d:	8a 56 00             	mov    dl,BYTE PTR [bp+0x0]
  90:	8a 76 01             	mov    dh,BYTE PTR [bp+0x1]
  93:	8a 4e 02             	mov    cl,BYTE PTR [bp+0x2]
  96:	8a 6e 03             	mov    ch,BYTE PTR [bp+0x3]
  99:	cd 13                	int    0x13
  9b:	66 61                	popa   
  9d:	73 1c                	jae    0xbb
  9f:	fe 4e 11             	dec    BYTE PTR [bp+0x11]
  a2:	75 0c                	jne    0xb0
  a4:	80 7e 00 80          	cmp    BYTE PTR [bp+0x0],0x80
  a8:	0f 84 8a 00          	je     0x136
  ac:	b2 80                	mov    dl,0x80
  ae:	eb 84                	jmp    0x34
  b0:	55                   	push   bp
  b1:	32 e4                	xor    ah,ah
  b3:	8a 56 00             	mov    dl,BYTE PTR [bp+0x0]
  b6:	cd 13                	int    0x13
  b8:	5d                   	pop    bp
  b9:	eb 9e                	jmp    0x59
  bb:	81 3e fe 7d 55 aa    	cmp    WORD PTR ds:0x7dfe,0xaa55
  c1:	75 6e                	jne    0x131
  c3:	ff 76 00             	push   WORD PTR [bp+0x0]
  c6:	e8 8d 00             	call   0x156
  c9:	75 17                	jne    0xe2
  cb:	fa                   	cli    
  cc:	b0 d1                	mov    al,0xd1
  ce:	e6 64                	out    0x64,al
  d0:	e8 83 00             	call   0x156
  d3:	b0 df                	mov    al,0xdf
  d5:	e6 60                	out    0x60,al
  d7:	e8 7c 00             	call   0x156
  da:	b0 ff                	mov    al,0xff
  dc:	e6 64                	out    0x64,al
  de:	e8 75 00             	call   0x156
  e1:	fb                   	sti    
  e2:	b8 00 bb             	mov    ax,0xbb00
  e5:	cd 1a                	int    0x1a
  e7:	66 23 c0             	and    eax,eax
  ea:	75 3b                	jne    0x127
  ec:	66 81 fb 54 43 50 41 	cmp    ebx,0x41504354
  f3:	75 32                	jne    0x127
  f5:	81 f9 02 01          	cmp    cx,0x102
  f9:	72 2c                	jb     0x127
  fb:	66 68 07 bb 00 00    	push   0xbb07
 101:	66 68 00 02 00 00    	push   0x200
 107:	66 68 08 00 00 00    	push   0x8
 10d:	66 53                	push   ebx
 10f:	66 53                	push   ebx
 111:	66 55                	push   ebp
 113:	66 68 00 00 00 00    	push   0x0
 119:	66 68 00 7c 00 00    	push   0x7c00
 11f:	66 61                	popa   
 121:	68 00 00             	push   0x0
 124:	07                   	pop    es
 125:	cd 1a                	int    0x1a
 127:	5a                   	pop    dx
 128:	32 f6                	xor    dh,dh
 12a:	ea 00 7c 00 00       	jmp    0x0:0x7c00
 12f:	cd 18                	int    0x18
 131:	a0 b7 07             	mov    al,ds:0x7b7
 134:	eb 08                	jmp    0x13e
 136:	a0 b6 07             	mov    al,ds:0x7b6
 139:	eb 03                	jmp    0x13e
 13b:	a0 b5 07             	mov    al,ds:0x7b5
 13e:	32 e4                	xor    ah,ah
 140:	05 00 07             	add    ax,0x700
 143:	8b f0                	mov    si,ax
 145:	ac                   	lods   al,BYTE PTR ds:[si]
 146:	3c 00                	cmp    al,0x0
 148:	74 09                	je     0x153
 14a:	bb 07 00             	mov    bx,0x7
 14d:	b4 0e                	mov    ah,0xe
 14f:	cd 10                	int    0x10
 151:	eb f2                	jmp    0x145
 153:	f4                   	hlt    
 154:	eb fd                	jmp    0x153
 156:	2b c9                	sub    cx,cx
 158:	e4 64                	in     al,0x64
 15a:	eb 00                	jmp    0x15c
 15c:	24 02                	and    al,0x2
 15e:	e0 f8                	loopne 0x158
 160:	24 02                	and    al,0x2
 162:	c3                   	ret    
 163:	49                   	dec    cx
 164:	6e                   	outs   dx,BYTE PTR ds:[si]
 165:	76 61                	jbe    0x1c8
 167:	6c                   	ins    BYTE PTR es:[di],dx
 168:	69 64 20 70 61       	imul   sp,WORD PTR [si+0x20],0x6170
 16d:	72 74                	jb     0x1e3
 16f:	69 74 69 6f 6e       	imul   si,WORD PTR [si+0x69],0x6e6f
 174:	20 74 61             	and    BYTE PTR [si+0x61],dh
 177:	62 6c 65             	bound  bp,DWORD PTR [si+0x65]
 17a:	00 45 72             	add    BYTE PTR [di+0x72],al
 17d:	72 6f                	jb     0x1ee
 17f:	72 20                	jb     0x1a1
 181:	6c                   	ins    BYTE PTR es:[di],dx
 182:	6f                   	outs   dx,WORD PTR ds:[si]
 183:	61                   	popa   
 184:	64 69 6e 67 20 6f    	imul   bp,WORD PTR fs:[bp+0x67],0x6f20
 18a:	70 65                	jo     0x1f1
 18c:	72 61                	jb     0x1ef
 18e:	74 69                	je     0x1f9
 190:	6e                   	outs   dx,BYTE PTR ds:[si]
 191:	67 20 73 79          	and    BYTE PTR [ebx+0x79],dh
 195:	73 74                	jae    0x20b
 197:	65 6d                	gs ins WORD PTR es:[di],dx
 199:	00 4d 69             	add    BYTE PTR [di+0x69],cl
 19c:	73 73                	jae    0x211
 19e:	69 6e 67 20 6f       	imul   bp,WORD PTR [bp+0x67],0x6f20
 1a3:	70 65                	jo     0x20a
 1a5:	72 61                	jb     0x208
 1a7:	74 69                	je     0x212
 1a9:	6e                   	outs   dx,BYTE PTR ds:[si]
 1aa:	67 20 73 79          	and    BYTE PTR [ebx+0x79],dh
 1ae:	73 74                	jae    0x224
 1b0:	65 6d                	gs ins WORD PTR es:[di],dx
 1b2:	00 00                	add    BYTE PTR [bx+si],al
 1b4:	00 63 7b             	add    BYTE PTR [bp+di+0x7b],ah
 1b7:	9a 10 1f 89 f3       	call   0xf389:0x1f10
 1bc:	00 00                	add    BYTE PTR [bx+si],al
 1be:	00 00                	add    BYTE PTR [bx+si],al
 1c0:	01 00                	add    WORD PTR [bx+si],ax
 1c2:	ee                   	out    dx,al
 1c3:	fe                   	(bad)  
 1c4:	ff                   	(bad)  
 1c5:	ff 01                	inc    WORD PTR [bx+di]
 1c7:	00 00                	add    BYTE PTR [bx+si],al
 1c9:	00 ff                	add    bh,bh
 1cb:	ff                   	(bad)  
 1cc:	ff                   	(bad)  
 1cd:	ff 00                	inc    WORD PTR [bx+si]
	...
 1fb:	00 00                	add    BYTE PTR [bx+si],al
 1fd:	00 55 aa             	add    BYTE PTR [di-0x56],dl
