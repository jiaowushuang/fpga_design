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
static const char *ng0 = "E:/Hang_Wang/G200_GLN_32_03_04/mapping_controller.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {128U, 0U};
static unsigned int ng4[] = {63U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {64U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {127U, 0U};
static unsigned int ng10[] = {5U, 0U};



static void Always_136_0(char *t0)
{
    char t4[8];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;

LAB0:    t1 = (t0 + 15728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 17784);
    *((int *)t2) = 1;
    t3 = (t0 + 15760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(136, ng0);

LAB5:    xsi_set_current_line(137, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(140, ng0);

LAB14:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t6);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t13 = (t4 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(144, ng0);

LAB29:    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 13688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB21:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(137, ng0);

LAB13:    xsi_set_current_line(138, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 13688);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB12;

LAB17:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(141, ng0);

LAB22:    xsi_set_current_line(142, ng0);
    t19 = (t0 + 13688);
    t20 = (t19 + 56U);
    t29 = *((char **)t20);
    memset(t28, 0, 8);
    t30 = (t29 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t30) == 0)
        goto LAB23;

LAB25:    t36 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t36) = 1;

LAB26:    t37 = (t28 + 4);
    t38 = (t29 + 4);
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    *((unsigned int *)t28) = t40;
    *((unsigned int *)t37) = 0;
    if (*((unsigned int *)t38) != 0)
        goto LAB28;

LAB27:    t45 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t45 & 1U);
    t46 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t46 & 1U);
    t47 = (t0 + 13688);
    xsi_vlogvar_wait_assign_value(t47, t28, 0, 0, 1, 0LL);
    goto LAB21;

LAB23:    *((unsigned int *)t28) = 1;
    goto LAB26;

LAB28:    t41 = *((unsigned int *)t28);
    t42 = *((unsigned int *)t38);
    *((unsigned int *)t28) = (t41 | t42);
    t43 = *((unsigned int *)t37);
    t44 = *((unsigned int *)t38);
    *((unsigned int *)t37) = (t43 | t44);
    goto LAB27;

}

static void Always_151_1(char *t0)
{
    char t4[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;

LAB0:    t1 = (t0 + 15976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 17800);
    *((int *)t2) = 1;
    t3 = (t0 + 16008);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(151, ng0);

LAB5:    xsi_set_current_line(152, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(155, ng0);

LAB14:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 13848);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(159, ng0);

LAB23:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 13688);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB27;

LAB24:    if (t18 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t4) = 1;

LAB27:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB28;

LAB29:
LAB30:
LAB21:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(152, ng0);

LAB13:    xsi_set_current_line(153, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 13848);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 10, 0LL);
    goto LAB12;

LAB17:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(156, ng0);

LAB22:    xsi_set_current_line(157, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 13848);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 10, 0LL);
    goto LAB21;

LAB26:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(160, ng0);

LAB31:    xsi_set_current_line(161, ng0);
    t28 = (t0 + 13848);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng2)));
    memset(t32, 0, 8);
    xsi_vlog_unsigned_add(t32, 10, t30, 10, t31, 10);
    t33 = (t0 + 13848);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 10, 0LL);
    goto LAB30;

}

static void Always_168_2(char *t0)
{
    char t4[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 16224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 17816);
    *((int *)t2) = 1;
    t3 = (t0 + 16256);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(168, ng0);

LAB5:    xsi_set_current_line(169, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(175, ng0);

LAB14:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 14488);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB15:    t6 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t6, 3);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng2)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t21 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng8)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t21 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng10)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t21 == 1)
        goto LAB26;

LAB27:
LAB28:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(169, ng0);

LAB13:    xsi_set_current_line(170, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 10, 0LL);
    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(177, ng0);

LAB29:    xsi_set_current_line(178, ng0);
    t12 = (t0 + 8168U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t19 = (t13 + 4);
    t20 = (t12 + 4);
    t7 = *((unsigned int *)t13);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB33;

LAB30:    if (t18 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t4) = 1;

LAB33:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB28;

LAB18:    xsi_set_current_line(186, ng0);

LAB46:    xsi_set_current_line(187, ng0);
    t3 = (t0 + 14008);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB50;

LAB47:    if (t18 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t4) = 1;

LAB50:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(191, ng0);

LAB55:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 14008);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 10, t6, 10, t12, 10);
    t13 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 10, 0LL);

LAB53:    goto LAB28;

LAB20:    xsi_set_current_line(195, ng0);

LAB56:    xsi_set_current_line(196, ng0);
    t3 = (t0 + 14168);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB60;

LAB57:    if (t18 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t4) = 1;

LAB60:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(200, ng0);

LAB65:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 14168);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 10, t6, 10, t12, 10);
    t13 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 10, 0LL);

LAB63:    goto LAB28;

LAB22:    xsi_set_current_line(204, ng0);

LAB66:    xsi_set_current_line(205, ng0);
    t3 = (t0 + 14328);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB70;

LAB67:    if (t18 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t4) = 1;

LAB70:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(210, ng0);

LAB75:    xsi_set_current_line(211, ng0);
    t2 = (t0 + 14328);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 2, t6, 2, t12, 2);
    t13 = (t0 + 14328);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 2, 0LL);

LAB73:    goto LAB28;

LAB24:    xsi_set_current_line(214, ng0);

LAB76:    xsi_set_current_line(215, ng0);
    t3 = (t0 + 14008);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB80;

LAB77:    if (t18 != 0)
        goto LAB79;

LAB78:    *((unsigned int *)t4) = 1;

LAB80:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(219, ng0);

LAB85:    xsi_set_current_line(220, ng0);
    t2 = (t0 + 14008);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 10, t6, 10, t12, 10);
    t13 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 10, 0LL);

LAB83:    goto LAB28;

LAB26:    xsi_set_current_line(223, ng0);

LAB86:    xsi_set_current_line(224, ng0);
    t3 = (t0 + 14168);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB90;

LAB87:    if (t18 != 0)
        goto LAB89;

LAB88:    *((unsigned int *)t4) = 1;

LAB90:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(229, ng0);

LAB95:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 14168);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 10, t6, 10, t12, 10);
    t13 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 10, 0LL);

LAB93:    goto LAB28;

LAB32:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(178, ng0);

LAB37:    xsi_set_current_line(179, ng0);
    t31 = (t0 + 8328U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng2)));
    memset(t33, 0, 8);
    t34 = (t32 + 4);
    t35 = (t31 + 4);
    t36 = *((unsigned int *)t32);
    t37 = *((unsigned int *)t31);
    t38 = (t36 ^ t37);
    t39 = *((unsigned int *)t34);
    t40 = *((unsigned int *)t35);
    t41 = (t39 ^ t40);
    t42 = (t38 | t41);
    t43 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t35);
    t45 = (t43 | t44);
    t46 = (~(t45));
    t47 = (t42 & t46);
    if (t47 != 0)
        goto LAB41;

LAB38:    if (t45 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t33) = 1;

LAB41:    t49 = (t33 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t33);
    t53 = (t52 & t51);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB42;

LAB43:
LAB44:    goto LAB36;

LAB40:    t48 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(179, ng0);

LAB45:    xsi_set_current_line(180, ng0);
    t55 = ((char*)((ng2)));
    t56 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t56, t55, 0, 0, 3, 0LL);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB44;

LAB49:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(187, ng0);

LAB54:    xsi_set_current_line(188, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 3, 0LL);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB53;

LAB59:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB60;

LAB61:    xsi_set_current_line(196, ng0);

LAB64:    xsi_set_current_line(197, ng0);
    t31 = ((char*)((ng6)));
    t32 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 3, 0LL);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB63;

LAB69:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(205, ng0);

LAB74:    xsi_set_current_line(206, ng0);
    t31 = ((char*)((ng8)));
    t32 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 3, 0LL);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB73;

LAB79:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB80;

LAB81:    xsi_set_current_line(215, ng0);

LAB84:    xsi_set_current_line(216, ng0);
    t31 = ((char*)((ng10)));
    t32 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 3, 0LL);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB83;

LAB89:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB90;

LAB91:    xsi_set_current_line(224, ng0);

LAB94:    xsi_set_current_line(225, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 14488);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 3, 0LL);
    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB93;

}

static void Always_238_3(char *t0)
{
    char t4[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 16472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(238, ng0);
    t2 = (t0 + 17832);
    *((int *)t2) = 1;
    t3 = (t0 + 16504);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(238, ng0);

LAB5:    xsi_set_current_line(239, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(244, ng0);

LAB14:    xsi_set_current_line(245, ng0);
    t2 = (t0 + 14648);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB15:    t6 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 2);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng2)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t21 == 1)
        goto LAB22;

LAB23:
LAB24:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(239, ng0);

LAB13:    xsi_set_current_line(240, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 13528);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 2, 0LL);
    xsi_set_current_line(241, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(242, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(246, ng0);

LAB25:    xsi_set_current_line(247, ng0);
    t12 = (t0 + 8168U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t19 = (t13 + 4);
    t20 = (t12 + 4);
    t7 = *((unsigned int *)t13);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB29;

LAB26:    if (t18 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t4) = 1;

LAB29:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB30;

LAB31:
LAB32:    goto LAB24;

LAB18:    xsi_set_current_line(255, ng0);

LAB42:    xsi_set_current_line(256, ng0);
    t3 = (t0 + 14808);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB46;

LAB43:    if (t18 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t4) = 1;

LAB46:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(261, ng0);

LAB51:    xsi_set_current_line(262, ng0);
    t2 = (t0 + 14808);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 12, t6, 12, t12, 12);
    t13 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 12, 0LL);

LAB49:    goto LAB24;

LAB20:    xsi_set_current_line(265, ng0);

LAB52:    xsi_set_current_line(266, ng0);
    t3 = (t0 + 14808);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t22 = (~(t18));
    t23 = (t15 & t22);
    if (t23 != 0)
        goto LAB56;

LAB53:    if (t18 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t4) = 1;

LAB56:    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(271, ng0);

LAB61:    xsi_set_current_line(272, ng0);
    t2 = (t0 + 14808);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 12, t6, 12, t12, 12);
    t13 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 12, 0LL);

LAB59:    goto LAB24;

LAB22:    xsi_set_current_line(275, ng0);

LAB62:    xsi_set_current_line(276, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 14648);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 2, 0LL);
    xsi_set_current_line(277, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 13528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB24;

LAB28:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(247, ng0);

LAB33:    xsi_set_current_line(248, ng0);
    t31 = (t0 + 8328U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng2)));
    memset(t33, 0, 8);
    t34 = (t32 + 4);
    t35 = (t31 + 4);
    t36 = *((unsigned int *)t32);
    t37 = *((unsigned int *)t31);
    t38 = (t36 ^ t37);
    t39 = *((unsigned int *)t34);
    t40 = *((unsigned int *)t35);
    t41 = (t39 ^ t40);
    t42 = (t38 | t41);
    t43 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t35);
    t45 = (t43 | t44);
    t46 = (~(t45));
    t47 = (t42 & t46);
    if (t47 != 0)
        goto LAB37;

LAB34:    if (t45 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t33) = 1;

LAB37:    t49 = (t33 + 4);
    t50 = *((unsigned int *)t49);
    t51 = (~(t50));
    t52 = *((unsigned int *)t33);
    t53 = (t52 & t51);
    t54 = (t53 != 0);
    if (t54 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB32;

LAB36:    t48 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(248, ng0);

LAB41:    xsi_set_current_line(249, ng0);
    t55 = ((char*)((ng2)));
    t56 = (t0 + 13528);
    xsi_vlogvar_wait_assign_value(t56, t55, 0, 0, 2, 0LL);
    xsi_set_current_line(250, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB40;

LAB45:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(256, ng0);

LAB50:    xsi_set_current_line(257, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 13528);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 2, 0LL);
    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 14648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(259, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB49;

LAB55:    t24 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB56;

LAB57:    xsi_set_current_line(266, ng0);

LAB60:    xsi_set_current_line(267, ng0);
    t31 = ((char*)((ng1)));
    t32 = (t0 + 13528);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 2, 0LL);
    xsi_set_current_line(268, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 14648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB59;

}

static void Always_283_4(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    t1 = (t0 + 16720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(283, ng0);
    t2 = (t0 + 17848);
    *((int *)t2) = 1;
    t3 = (t0 + 16752);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(283, ng0);

LAB5:    xsi_set_current_line(284, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(294, ng0);

LAB14:    xsi_set_current_line(295, ng0);
    t2 = (t0 + 13528);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB15:    t6 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 3);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng2)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 3);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 3);
    if (t21 == 1)
        goto LAB20;

LAB21:
LAB22:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(284, ng0);

LAB13:    xsi_set_current_line(285, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 12, 0LL);
    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(287, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(288, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(289, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(290, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(291, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(296, ng0);

LAB23:    xsi_set_current_line(297, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 12, 0LL);
    xsi_set_current_line(298, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(299, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(300, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(301, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(302, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(303, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(304, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    goto LAB22;

LAB18:    xsi_set_current_line(306, ng0);

LAB24:    xsi_set_current_line(307, ng0);
    t3 = (t0 + 5608U);
    t6 = *((char **)t3);
    t3 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 12, 0LL);
    xsi_set_current_line(308, ng0);
    t2 = (t0 + 5928U);
    t3 = *((char **)t2);
    t2 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(309, ng0);
    t2 = (t0 + 6248U);
    t3 = *((char **)t2);
    t2 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(310, ng0);
    t2 = (t0 + 6568U);
    t3 = *((char **)t2);
    t2 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(311, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    t2 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(312, ng0);
    t2 = (t0 + 7208U);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(313, ng0);
    t2 = (t0 + 7528U);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(314, ng0);
    t2 = (t0 + 7848U);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    goto LAB22;

LAB20:    xsi_set_current_line(316, ng0);

LAB25:    xsi_set_current_line(317, ng0);
    t3 = (t0 + 5768U);
    t6 = *((char **)t3);
    t3 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 12, 0LL);
    xsi_set_current_line(318, ng0);
    t2 = (t0 + 6088U);
    t3 = *((char **)t2);
    t2 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(319, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(320, ng0);
    t2 = (t0 + 6728U);
    t3 = *((char **)t2);
    t2 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(321, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(322, ng0);
    t2 = (t0 + 7368U);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(323, ng0);
    t2 = (t0 + 7688U);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(324, ng0);
    t2 = (t0 + 8008U);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    goto LAB22;

}

static void Always_330_5(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 16968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(330, ng0);
    t2 = (t0 + 17864);
    *((int *)t2) = 1;
    t3 = (t0 + 17000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(330, ng0);

LAB5:    xsi_set_current_line(331, ng0);
    t5 = (t0 + 2568U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(351, ng0);

LAB14:    xsi_set_current_line(352, ng0);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t2 = (t0 + 10648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(353, ng0);
    t2 = (t0 + 3208U);
    t3 = *((char **)t2);
    t2 = (t0 + 10808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(354, ng0);
    t2 = (t0 + 3368U);
    t3 = *((char **)t2);
    t2 = (t0 + 10968);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(355, ng0);
    t2 = (t0 + 3528U);
    t3 = *((char **)t2);
    t2 = (t0 + 11128);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(356, ng0);
    t2 = (t0 + 3688U);
    t3 = *((char **)t2);
    t2 = (t0 + 11288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(357, ng0);
    t2 = (t0 + 3848U);
    t3 = *((char **)t2);
    t2 = (t0 + 11448);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(358, ng0);
    t2 = (t0 + 4008U);
    t3 = *((char **)t2);
    t2 = (t0 + 11608);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(359, ng0);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t2 = (t0 + 11768);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(360, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t2 = (t0 + 11928);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(361, ng0);
    t2 = (t0 + 4488U);
    t3 = *((char **)t2);
    t2 = (t0 + 12088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(362, ng0);
    t2 = (t0 + 4648U);
    t3 = *((char **)t2);
    t2 = (t0 + 12248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(363, ng0);
    t2 = (t0 + 4808U);
    t3 = *((char **)t2);
    t2 = (t0 + 12408);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(364, ng0);
    t2 = (t0 + 4968U);
    t3 = *((char **)t2);
    t2 = (t0 + 12568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(365, ng0);
    t2 = (t0 + 5128U);
    t3 = *((char **)t2);
    t2 = (t0 + 12728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(366, ng0);
    t2 = (t0 + 5288U);
    t3 = *((char **)t2);
    t2 = (t0 + 12888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(367, ng0);
    t2 = (t0 + 5448U);
    t3 = *((char **)t2);
    t2 = (t0 + 13048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 12, 0LL);
    xsi_set_current_line(368, ng0);
    t2 = (t0 + 8168U);
    t3 = *((char **)t2);
    t2 = (t0 + 13208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(369, ng0);
    t2 = (t0 + 8328U);
    t3 = *((char **)t2);
    t2 = (t0 + 13368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(370, ng0);
    t2 = (t0 + 13208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(371, ng0);
    t2 = (t0 + 13368);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 10488);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);

LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(331, ng0);

LAB13:    xsi_set_current_line(332, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 10648);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 12, 0LL);
    xsi_set_current_line(333, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(334, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 10968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(335, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(336, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(337, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11448);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(338, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(339, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(340, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 11928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(341, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(342, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(343, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(344, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(345, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(346, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 12888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(347, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 13048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(348, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 13208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(349, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 13368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 17216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 17976);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 17880);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 17464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 18040);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 17896);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}


extern void work_m_00000000001959812427_3691299286_init()
{
	static char *pe[] = {(void *)Always_136_0,(void *)Always_151_1,(void *)Always_168_2,(void *)Always_238_3,(void *)Always_283_4,(void *)Always_330_5,(void *)implSig1_execute,(void *)implSig2_execute};
	xsi_register_didat("work_m_00000000001959812427_3691299286", "isim/tb_mapping_controller_isim_beh.exe.sim/work/m_00000000001959812427_3691299286.didat");
	xsi_register_executes(pe);
}
