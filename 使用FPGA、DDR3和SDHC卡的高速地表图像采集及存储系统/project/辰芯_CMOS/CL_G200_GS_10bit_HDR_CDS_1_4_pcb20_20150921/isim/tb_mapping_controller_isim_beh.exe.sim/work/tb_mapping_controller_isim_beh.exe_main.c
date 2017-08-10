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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000000905158087_1335204964_init();
    unisims_ver_m_00000000003927721830_1593237687_init();
    unisims_ver_m_00000000000129024098_1730278898_init();
    work_m_00000000000463446860_2440527582_init();
    xilinxcorelib_ver_m_00000000001358910285_0742454809_init();
    xilinxcorelib_ver_m_00000000001687936702_3953676297_init();
    xilinxcorelib_ver_m_00000000000277421008_3012105832_init();
    xilinxcorelib_ver_m_00000000002856723387_3806992078_init();
    work_m_00000000003617559063_1040416837_init();
    work_m_00000000001959812427_3691299286_init();
    work_m_00000000002854242189_4087339655_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000002854242189_4087339655");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
