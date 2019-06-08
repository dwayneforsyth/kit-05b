;    list p=12f683,b=4,n=0   ; declare processor, tabs, and lines/page
    
;**********************************************************************
;   Copyright (C) 2005,2006,2007 Dwayne Forsyth
;                                 
;   This program is free software; you can redistribute it and/or
;   modify it under the terms of the GNU General Public License
;   as published by the Free Software Foundation; either version 2
;   of the License, or (at your option) any later version.
; 
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;   GNU General Public License for more details.
;
;   You should have received a copy of the GNU General Public License
;   along with this program; if not, write to the
; 
;      Free Software Foundation, Inc.
;      51 Franklin Street, Fifth Floor
;      Boston, MA  02110-1301, USA.
;
;**********************************************************************

;**********************************************************************
rgb_stick_expand  ; this is a nice chunk of code without jumps to sit on the 11 bit boundry
;**********************************************************************

    movlw        LOW C2_C1_reg ; 1
    movwf        FSR0L
    movlw        HIGH C2_C1_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,0                    ; R1
    movwf    INDF0

    movlw        LOW C3_C2_reg ; 2
    movwf        FSR0L
    movlw        HIGH C3_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,1                    ; R2
    movwf    INDF0

    movlw        LOW C4_C3_reg ; 3
    movwf        FSR0L
    movlw        HIGH C4_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,2                    ; R3
    movwf    INDF0
 
    movlw        LOW C5_C4_reg ; 4
    movwf        FSR0L
    movlw        HIGH C5_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,3                    ; R4
    movwf    INDF0

    movlw        LOW A5_C5_reg ; 5
    movwf        FSR0L
    movlw        HIGH A5_C5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,4                    ; R5
    movwf    INDF0

    movlw        LOW A5_C2_reg ; 6
    movwf        FSR0L
    movlw        HIGH A5_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,5                    ; R6
    movwf    INDF0

    movlw        LOW C1_C0_reg ; 7
    movwf        FSR0L
    movlw        HIGH C1_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,6                    ; R7
    movwf    INDF0

    movlw        LOW C2_C5_reg  ; 8
    movwf        FSR0L
    movlw        HIGH C2_C5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in1,7                    ; R8
    movwf    INDF0

    movlw        LOW C3_A5_reg ; 9
    movwf        FSR0L
    movlw        HIGH C3_A5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,0                    ; R9
    movwf    INDF0

    movlw        LOW C4_C0_reg ; 10
    movwf        FSR0L
    movlw        HIGH C4_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,1                    ; R10
    movwf    INDF0

    movlw        LOW C5_C1_reg ; 11
    movwf        FSR0L
    movlw        HIGH C5_C1_reg 
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,2                    ; R11
    movwf    INDF0            

    movlw        LOW C0_C3_reg ;12
    movwf        FSR0L
    movlw        HIGH C0_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,3                    ; R12
    movwf    INDF0

    movlw        LOW C0_A5_reg ; 13
    movwf        FSR0L
    movlw        HIGH C0_A5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,4                    ; R13
    movwf    INDF0

    movlw        LOW C1_C4_reg ; 14
    movwf        FSR0L
    movlw        HIGH C1_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in0,5                    ; R14
    movwf    INDF0



    movlw        LOW C2_C0_reg ;1
    movwf        FSR0L
    movlw        HIGH C2_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,0                    ; G1
    movwf        INDF0

    movlw        LOW C3_C1_reg ; 2
    movwf        FSR0L
    movlw        HIGH C3_C1_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,1                    ; G2
    movwf        INDF0

    movlw        LOW C4_C2_reg ; 3
    movwf        FSR0L
    movlw        HIGH C4_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,2                    ; G3
    movwf        INDF0

    movlw        LOW C5_C3_reg ;4
    movwf        FSR0L
    movlw        HIGH C5_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,3                    ; G4
    movwf        INDF0

    movlw        LOW A5_C4_reg ; 5
    movwf        FSR0L
    movlw        HIGH A5_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,4                    ; G5
    movwf        INDF0

    movlw        LOW A5_C1_reg ; 6
    movwf        FSR0L
    movlw        HIGH A5_C1_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,5                    ; G6
    movwf        INDF0

    movlw        LOW C1_A5_reg ; 7
    movwf        FSR0L
    movlw        HIGH C1_A5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,6                    ; G7
    movwf        INDF0

    movlw        LOW C2_C4_reg ; 8
    movwf        FSR0L
    movlw        HIGH C2_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in3,7                    ; G8
    movwf        INDF0
    
    movlw        LOW C3_C5_reg ; 9
    movwf        FSR0L
    movlw        HIGH C3_C5_reg 
    movwf        FSR0H
    movlw        0xff
    btfsc        in2,0                    ; G9
    movwf        INDF0

    movlw        LOW C4_A5_reg ; 10
    movwf        FSR0L 
    movlw        HIGH C4_A5_reg
    movwf        FSR0H 
    movlw        0xff
    btfsc        in2,1
    movwf        INDF0                    ; G10
 
    movlw        LOW C5_C0_reg ; 11
    movwf        FSR0L
    movlw        HIGH C5_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in2,2                    ; G11
    movwf        INDF0

    movlw        LOW C0_C2_reg ; 12
    movwf        FSR0L
    movlw        HIGH C0_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in2,3                    ; G12
    movwf        INDF0
 
    movlw        LOW C0_C5_reg ; 13
    movwf        FSR0L
    movlw        HIGH C0_C5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in2,4                    ; G13                    
    movwf        INDF0

    movlw        LOW C1_C3_reg ; 14
    movwf        FSR0L
    movlw        HIGH C1_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in2,5                    ; G14                    
    movwf        INDF0


    movlw        LOW C2_A5_reg ; 1
    movwf        FSR0L
    movlw        HIGH C2_A5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,0                    ; B1
    movwf        INDF0

    movlw        LOW C3_C0_reg ; 2
    movwf        FSR0L
    movlw        HIGH C3_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,1                    ; B2
    movwf        INDF0

    movlw        LOW C4_C1_reg ; 3
    movwf        FSR0L
    movlw        HIGH C4_C1_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,2                    ; B3
    movwf        INDF0

    movlw        LOW C5_C2_reg ; 4
    movwf        FSR0L
    movlw        HIGH C5_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,3                    ; B4
    movwf        INDF0

    movlw        LOW A5_C3_reg ; 5
    movwf        FSR0L
    movlw        HIGH A5_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,4                    ; B5
    movwf        INDF0

    movlw        LOW A5_C0_reg ; 6
    movwf        FSR0L
    movlw        HIGH A5_C0_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,5                    ; B6
    movwf        INDF0

    movlw        LOW C1_C5_reg ; 7
    movwf        FSR0L
    movlw        HIGH C1_C5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,6                    ; B7
    movwf        INDF0 

    movlw        LOW C2_C3_reg ; 8
    movwf        FSR0L
    movlw        HIGH C2_C3_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in5,7                    ; B8
    movwf        INDF0

    movlw        LOW C3_C4_reg ; 9
    movwf        FSR0L
    movlw        HIGH C3_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,0                    ; B9
    movwf        INDF0

    movlw        LOW C4_C5_reg ; 10
    movwf        FSR0L
    movlw        HIGH C4_C5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,1                    ; B10
    movwf        INDF0

    movlw        LOW C5_A5_reg ; 11  
    movwf        FSR0L
    movlw        HIGH C5_A5_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,2                    ; B11
    movwf        INDF0

    movlw        LOW C0_C1_reg ; 12 
    movwf        FSR0L
    movlw        HIGH C0_C1_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,3                    ; B12
    movwf        INDF0

    movlw        LOW C0_C4_reg ; 13
    movwf        FSR0L
    movlw        HIGH C0_C4_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,4                    ; B13
    movwf        INDF0

    movlw        LOW C1_C2_reg ; 14
    movwf        FSR0L
    movlw        HIGH C1_C2_reg
    movwf        FSR0H
    movlw        0xff
    btfsc        in4,5                    ; B14
    movwf        INDF0

    return
