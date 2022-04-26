
// Generated by ac_shell v4.0-s005 on Sat Apr 28 22:36:38 CST 2001.  
// Restrictions concerning the use of Ambit BuildGates are covered in the
// license agreement.  Distribution to third party EDA vendors is
// strictly prohibited.

module dtmf_chip( swack, swcontrol, lscontrol, tdigit, tdigit_flag, reset, int, port_pad_data_out, 
		port_pad_data_in, scan_en, scan_clk, test_mode, spi_data, spi_fs
		, refclk, vcop, vcom, pllrst, ibias);

        input  swcontrol, lscontrol;
        output swack;
	output [7:0] tdigit;
	output tdigit_flag;
	input reset;
	input int;
	output [15:0] port_pad_data_out;
	input [15:0] port_pad_data_in;
	input scan_en;
	input scan_clk;
	input test_mode;
	input spi_data;
	input spi_fs;
	input refclk;
	output vcop;
	output vcom;
	input pllrst;
	input ibias;

//	wire [15:0] tdsp_portI;
//	wire [15:0] tdsp_portO;
//	wire [7:0] tdigitO;
//      wire swack, swcontrol, lscontrol;
//      wire swackI, swcontrolI, lscontrolI;

	dtmf_recvr_core DTMF_INST(
            .tdigit(tdigit), 
            .tdigit_flag(tdigit_flag), 
            .reset(reset), 
            .port_pad_data_out(port_pad_data_out), 
            .port_pad_data_in(port_pad_data_in), 
            .scan_clk(scan_clk), 
            .scan_en(scan_en), 
            .test_mode(test_mode), 
            .spi_fs(spi_fs), 
            .spi_data(spi_data), 
            .refclk(refclk), 
            .vcop(vcop), 
            .vcom(vcom), 
            .pllrst(pllrst), 
            .ibias(ibias)
        );
endmodule
