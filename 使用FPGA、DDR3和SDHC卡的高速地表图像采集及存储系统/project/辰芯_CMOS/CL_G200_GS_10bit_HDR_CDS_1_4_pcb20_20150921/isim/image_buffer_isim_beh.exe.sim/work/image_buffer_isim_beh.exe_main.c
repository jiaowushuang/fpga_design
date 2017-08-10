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
    xilinxcorelib_ver_m_00000000001358910285_1299352493_init();
    xilinxcorelib_ver_m_00000000001687936702_2896612753_init();
    xilinxcorelib_ver_m_00000000000277421008_1662235411_init();
    xilinxcorelib_ver_m_00000000002856723387_1105441338_init();
    work_m_00000000003617559063_3220991581_init();
    work_m_00000000001532734919_3768067540_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000001532734919_3768067540");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
