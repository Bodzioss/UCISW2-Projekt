/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/STUDIA/UCISW2/Github/UCISW2-Projekt/SDC_Help4.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2702862945_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5128);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5240);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 5240);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_2702862945_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    int t17;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB4, &&LAB6};

LAB0:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5144);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(79, ng0);
    t4 = xsi_get_transient_memory(16U);
    memset(t4, 0, 16U);
    t5 = t4;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 5368);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t4 = (t0 + 5432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(81, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t4 = (t0 + 5496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)3);
    if (t11 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB2;

LAB5:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t3 = (t15 == t16);
    if (t3 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t17 = (t16 + 1);
    t3 = (t15 == t17);
    if (t3 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t3 = (t15 == t16);
    if (t3 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t17 = (t16 + 1);
    t3 = (t15 == t17);
    if (t3 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t17 = (t16 + 2);
    t3 = (t15 == t17);
    if (t3 != 0)
        goto LAB25;

LAB26:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3208U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t17 = (t16 + 3);
    t3 = (t15 == t17);
    if (t3 != 0)
        goto LAB27;

LAB28:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t3 = (t15 == t16);
    if (t3 != 0)
        goto LAB29;

LAB30:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t16 = *((int *)t4);
    t3 = (t15 == t16);
    if (t3 != 0)
        goto LAB31;

LAB32:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 + 1);
    t1 = (t0 + 5560);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB2;

LAB6:    xsi_set_current_line(131, ng0);
    goto LAB2;

LAB7:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t3 = t14;
    goto LAB12;

LAB13:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t16 = (t15 + 1);
    t1 = (t0 + 5560);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5368);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5368);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB21:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5432);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 24U, 8U, 0LL);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB23:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5432);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 16U, 8U, 0LL);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB25:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5432);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB27:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5432);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB29:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB31:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 5496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_delta(t1, 0U, 8U, 0LL);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

}

static void work_a_2702862945_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 5624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5160);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5624);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2702862945_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2702862945_3212880686_p_0,(void *)work_a_2702862945_3212880686_p_1,(void *)work_a_2702862945_3212880686_p_2};
	xsi_register_didat("work_a_2702862945_3212880686", "isim/Helper_test_isim_beh.exe.sim/work/a_2702862945_3212880686.didat");
	xsi_register_executes(pe);
}
