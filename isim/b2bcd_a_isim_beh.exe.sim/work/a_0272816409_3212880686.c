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
static const char *ng0 = "//es-egr-03/Students/M/lmestar/helloVHDL/B2BCD.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720006528_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0272816409_3212880686_p_0(char *t0)
{
    char t29[16];
    char t31[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t30;
    unsigned int t32;
    unsigned int t33;

LAB0:    t1 = (t0 + 3952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);

LAB6:    t2 = (t0 + 4272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 4272);
    *((int *)t6) = 0;
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 7207);
    t14 = xsi_mem_cmp(t2, t4, 3U);
    if (t14 == 1)
        goto LAB15;

LAB21:    t7 = (t0 + 7210);
    t15 = xsi_mem_cmp(t7, t4, 3U);
    if (t15 == 1)
        goto LAB16;

LAB22:    t11 = (t0 + 7213);
    t16 = xsi_mem_cmp(t11, t4, 3U);
    if (t16 == 1)
        goto LAB17;

LAB23:    t13 = (t0 + 7216);
    t18 = xsi_mem_cmp(t13, t4, 3U);
    if (t18 == 1)
        goto LAB18;

LAB24:    t19 = (t0 + 7219);
    t21 = xsi_mem_cmp(t19, t4, 3U);
    if (t21 == 1)
        goto LAB19;

LAB25:
LAB20:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 7351);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);

LAB14:
LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 1312U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 7204);
    t7 = (t0 + 4352);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB12;

LAB15:    xsi_set_current_line(35, ng0);
    t22 = (t0 + 1032U);
    t23 = *((char **)t22);
    t3 = *((unsigned char *)t23);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 7229);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);

LAB28:    goto LAB14;

LAB16:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7232);
    t10 = (t29 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t3 = ieee_p_1242562249_sub_2720006528_1035706684(IEEE_P_1242562249, t4, t2, t6, t29);
    if (t3 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7252);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (13U != t32);
    if (t3 == 1)
        goto LAB33;

LAB34:    t13 = (t0 + 4416);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 13U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 7144U);
    t6 = (t0 + 7265);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (3 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (4U != t32);
    if (t3 == 1)
        goto LAB35;

LAB36:    t13 = (t0 + 4480);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 7269);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);

LAB31:    goto LAB14;

LAB17:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7272);
    t10 = (t29 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t3 = ieee_p_1242562249_sub_2720006528_1035706684(IEEE_P_1242562249, t4, t2, t6, t29);
    if (t3 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7292);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (13U != t32);
    if (t3 == 1)
        goto LAB40;

LAB41:    t13 = (t0 + 4416);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 13U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 7144U);
    t6 = (t0 + 7305);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (3 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (4U != t32);
    if (t3 == 1)
        goto LAB42;

LAB43:    t13 = (t0 + 4480);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 7309);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);

LAB38:    goto LAB14;

LAB18:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7312);
    t10 = (t29 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t3 = ieee_p_1242562249_sub_2720006528_1035706684(IEEE_P_1242562249, t4, t2, t6, t29);
    if (t3 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 7128U);
    t6 = (t0 + 7328);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 12;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (12 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (13U != t32);
    if (t3 == 1)
        goto LAB47;

LAB48:    t13 = (t0 + 4416);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 13U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 7144U);
    t6 = (t0 + 7341);
    t10 = (t31 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (3 - 0);
    t30 = (t14 * 1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t11 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t29, t4, t2, t6, t31);
    t12 = (t29 + 12U);
    t30 = *((unsigned int *)t12);
    t32 = (1U * t30);
    t3 = (4U != t32);
    if (t3 == 1)
        goto LAB49;

LAB50:    t13 = (t0 + 4480);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7345);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);

LAB45:    goto LAB14;

LAB19:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4800);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7348);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB14;

LAB26:;
LAB27:    xsi_set_current_line(36, ng0);
    t22 = (t0 + 1672U);
    t24 = *((char **)t22);
    t22 = (t0 + 4416);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 13U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 7222);
    t6 = (t0 + 4480);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 7226);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB28;

LAB30:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 7245);
    t13 = (t0 + 4480);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 4544);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 7249);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB31;

LAB33:    xsi_size_not_matching(13U, t32, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(4U, t32, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 7285);
    t13 = (t0 + 4480);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 4608);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 7289);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB38;

LAB40:    xsi_size_not_matching(13U, t32, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(4U, t32, 0);
    goto LAB43;

LAB44:    xsi_set_current_line(59, ng0);
    t11 = (t0 + 2632U);
    t12 = *((char **)t11);
    t30 = (12 - 3);
    t32 = (t30 * 1U);
    t33 = (0 + t32);
    t11 = (t12 + t33);
    t13 = (t0 + 4672);
    t17 = (t13 + 56U);
    t19 = *((char **)t17);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 4736);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 7325);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB45;

LAB47:    xsi_size_not_matching(13U, t32, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(4U, t32, 0);
    goto LAB50;

}


extern void work_a_0272816409_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0272816409_3212880686_p_0};
	xsi_register_didat("work_a_0272816409_3212880686", "isim/b2bcd_a_isim_beh.exe.sim/work/a_0272816409_3212880686.didat");
	xsi_register_executes(pe);
}
