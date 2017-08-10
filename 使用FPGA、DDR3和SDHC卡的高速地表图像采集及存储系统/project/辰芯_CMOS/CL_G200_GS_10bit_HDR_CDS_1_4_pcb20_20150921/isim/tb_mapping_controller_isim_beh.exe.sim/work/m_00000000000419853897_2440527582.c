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



static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2008U);
    t4 = *((char **)t2);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = (t0 + 1848U);
    t6 = *((char **)t2);
    t2 = (t0 + 1848U);
    t7 = *((char **)t2);
    t2 = (t0 + 1848U);
    t8 = *((char **)t2);
    xsi_vlogtype_concat(t3, 5, 5, 5U, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 4632);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t12, 0, 8);
    t13 = 31U;
    t14 = t13;
    t15 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t13 = (t13 & t16);
    t17 = *((unsigned int *)t15);
    t14 = (t14 & t17);
    t18 = (t12 + 4);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 | t13);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t20 | t14);
    xsi_driver_vfirst_trans(t2, 0, 4);
    t21 = (t0 + 4536);
    *((int *)t21) = 1;

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = (t0 + 1848U);
    t6 = *((char **)t2);
    t2 = (t0 + 1848U);
    t7 = *((char **)t2);
    t2 = (t0 + 1848U);
    t8 = *((char **)t2);
    xsi_vlogtype_concat(t3, 5, 5, 5U, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 4696);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t12, 0, 8);
    t13 = 31U;
    t14 = t13;
    t15 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t13 = (t13 & t16);
    t17 = *((unsigned int *)t15);
    t14 = (t14 & t17);
    t18 = (t12 + 4);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 | t13);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t20 | t14);
    xsi_driver_vfirst_trans(t2, 0, 4);
    t21 = (t0 + 4552);
    *((int *)t21) = 1;

LAB1:    return;
}


extern void work_m_00000000000419853897_2440527582_init()
{
	static char *pe[] = {(void *)implSig1_execute,(void *)implSig2_execute};
	xsi_register_didat("work_m_00000000000419853897_2440527582", "isim/tb_mapping_controller_isim_beh.exe.sim/work/m_00000000000419853897_2440527582.didat");
	xsi_register_executes(pe);
}
