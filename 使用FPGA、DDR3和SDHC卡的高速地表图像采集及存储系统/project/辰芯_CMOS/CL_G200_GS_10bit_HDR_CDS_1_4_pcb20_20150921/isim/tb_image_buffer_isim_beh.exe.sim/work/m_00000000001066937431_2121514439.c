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

/* This file is designed for use with ISim build 0xc4ca3437 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Hang_Wang/G200_GLN_32_03_05/tb_image_buffer.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {15, 0};
static int ng4[] = {2, 0};
static int ng5[] = {2446, 0};
static unsigned int ng6[] = {0U, 0U};
static unsigned int ng7[] = {128U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {1028U, 0U};



static void Initial_92_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 7120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);

LAB4:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3320);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3640);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3800);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3960);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4120);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4280);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4440);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4600);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4760);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5080);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5400);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6928);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 6928);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3320);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

static void Always_118_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 7176);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);
    t4 = (t0 + 3160);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3160);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_119_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7424);
    xsi_process_wait(t2, 7140LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 5080);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 5080);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_121_3(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 7864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 8184);
    *((int *)t2) = 1;
    t3 = (t0 + 7896);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(121, ng0);

LAB5:    xsi_set_current_line(122, ng0);
    t5 = (t0 + 3320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t8) == 0)
        goto LAB6;

LAB8:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t4);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(130, ng0);

LAB14:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 6200);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB15:    t6 = ((char*)((ng6)));
    t23 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t23 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t23 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t23 == 1)
        goto LAB18;

LAB19:
LAB20:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 5880);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t8 = (t6 + 4);
    t14 = (t7 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t14);
    t16 = (t12 ^ t13);
    t17 = (t11 | t16);
    t18 = *((unsigned int *)t8);
    t19 = *((unsigned int *)t14);
    t20 = (t18 | t19);
    t24 = (~(t20));
    t25 = (t17 & t24);
    if (t25 != 0)
        goto LAB44;

LAB41:    if (t20 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t4) = 1;

LAB44:    t21 = (t4 + 4);
    t28 = *((unsigned int *)t21);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(159, ng0);

LAB49:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 5880);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 12, t6, 12, t7, 12);
    t8 = (t0 + 5880);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 12, 0LL);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB47:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(122, ng0);

LAB13:    xsi_set_current_line(123, ng0);
    t21 = ((char*)((ng6)));
    t22 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 1, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5720);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(132, ng0);

LAB21:    xsi_set_current_line(133, ng0);
    t7 = (t0 + 5720);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    t15 = ((char*)((ng7)));
    memset(t4, 0, 8);
    t21 = (t14 + 4);
    t22 = (t15 + 4);
    t9 = *((unsigned int *)t14);
    t10 = *((unsigned int *)t15);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t16 = (t12 ^ t13);
    t17 = (t11 | t16);
    t18 = *((unsigned int *)t21);
    t19 = *((unsigned int *)t22);
    t20 = (t18 | t19);
    t24 = (~(t20));
    t25 = (t17 & t24);
    if (t25 != 0)
        goto LAB25;

LAB22:    if (t20 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t4) = 1;

LAB25:    t27 = (t4 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(138, ng0);

LAB30:    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5720);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 12, t6, 12, t7, 12);
    t8 = (t0 + 5720);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 12, 0LL);

LAB28:    goto LAB20;

LAB18:    xsi_set_current_line(143, ng0);

LAB31:    xsi_set_current_line(144, ng0);
    t3 = (t0 + 5720);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng8)));
    memset(t4, 0, 8);
    t14 = (t7 + 4);
    t15 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = *((unsigned int *)t8);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t14);
    t13 = *((unsigned int *)t15);
    t16 = (t12 ^ t13);
    t17 = (t11 | t16);
    t18 = *((unsigned int *)t14);
    t19 = *((unsigned int *)t15);
    t20 = (t18 | t19);
    t24 = (~(t20));
    t25 = (t17 & t24);
    if (t25 != 0)
        goto LAB35;

LAB32:    if (t20 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t4) = 1;

LAB35:    t22 = (t4 + 4);
    t28 = *((unsigned int *)t22);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(149, ng0);

LAB40:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 5720);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 12, t6, 12, t7, 12);
    t8 = (t0 + 5720);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 12, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB38:    goto LAB20;

LAB24:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(133, ng0);

LAB29:    xsi_set_current_line(134, ng0);
    t33 = ((char*)((ng6)));
    t34 = (t0 + 5720);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 12, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 6200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB28;

LAB34:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(144, ng0);

LAB39:    xsi_set_current_line(145, ng0);
    t26 = ((char*)((ng8)));
    t27 = (t0 + 5720);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 12, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB38;

LAB43:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(155, ng0);

LAB48:    xsi_set_current_line(156, ng0);
    t22 = ((char*)((ng6)));
    t26 = (t0 + 5880);
    xsi_vlogvar_wait_assign_value(t26, t22, 0, 0, 12, 0LL);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB47;

}


extern void work_m_00000000001066937431_2121514439_init()
{
	static char *pe[] = {(void *)Initial_92_0,(void *)Always_118_1,(void *)Always_119_2,(void *)Always_121_3};
	xsi_register_didat("work_m_00000000001066937431_2121514439", "isim/tb_image_buffer_isim_beh.exe.sim/work/m_00000000001066937431_2121514439.didat");
	xsi_register_executes(pe);
}
