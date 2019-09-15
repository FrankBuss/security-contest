//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Sep 15 18:54:11 2019
// Version: v12.1 12.600.0.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    CLK0_PAD,
    DEVRST_N_0,
    TCK,
    TDI,
    TMS,
    TRSTB,
    io_uart_rxd,
    // Outputs
    LED1_GREEN,
    LED1_RED,
    LED2_GREEN,
    LED2_RED,
    TDO,
    io_uart_txd
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK0_PAD;
input  DEVRST_N_0;
input  TCK;
input  TDI;
input  TMS;
input  TRSTB;
input  io_uart_rxd;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED1_GREEN;
output LED1_RED;
output LED2_GREEN;
output LED2_RED;
output TDO;
output io_uart_txd;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK0_PAD;
wire   DEVRST_N_0;
wire   io_uart_rxd;
wire   io_uart_txd_net_0;
wire   JTAG_0_TGT_TCK_0;
wire   JTAG_0_TGT_TDI_0;
wire   JTAG_0_TGT_TMS_0;
wire   LED1_GREEN_net_0;
wire   LED2_GREEN_net_0;
wire   MainClockCCC_0_GL0;
wire   Murax_0_io_jtag_tdo;
wire   TCK;
wire   TDI;
wire   TDO_net_0;
wire   TMS;
wire   TRSTB;
wire   LED1_GREEN_net_1;
wire   io_uart_txd_net_1;
wire   LED2_GREEN_net_1;
wire   TDO_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
wire   [31:0]io_gpioA_read_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                   = 1'b0;
assign io_gpioA_read_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign LED2_RED          = 1'b0;
assign LED1_RED          = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LED1_GREEN_net_1  = LED1_GREEN_net_0;
assign LED1_GREEN        = LED1_GREEN_net_1;
assign io_uart_txd_net_1 = io_uart_txd_net_0;
assign io_uart_txd       = io_uart_txd_net_1;
assign LED2_GREEN_net_1  = LED2_GREEN_net_0;
assign LED2_GREEN        = LED2_GREEN_net_1;
assign TDO_net_1         = TDO_net_0;
assign TDO               = TDO_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Blinker
Blinker Blinker_0(
        // Inputs
        .clk        ( MainClockCCC_0_GL0 ),
        // Outputs
        .LED1_GREEN ( LED1_GREEN_net_0 ) 
        );

//--------JTAG
JTAG JTAG_0(
        // Inputs
        .TRSTB       ( TRSTB ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TDI         ( TDI ),
        .TGT_TDO_0   ( Murax_0_io_jtag_tdo ),
        // Outputs
        .TDO         ( TDO_net_0 ),
        .TGT_TRSTB_0 (  ),
        .TGT_TCK_0   ( JTAG_0_TGT_TCK_0 ),
        .TGT_TMS_0   ( JTAG_0_TGT_TMS_0 ),
        .TGT_TDI_0   ( JTAG_0_TGT_TDI_0 ) 
        );

//--------MainClockCCC
MainClockCCC MainClockCCC_0(
        // Inputs
        .CLK0_PAD ( CLK0_PAD ),
        // Outputs
        .GL0      ( MainClockCCC_0_GL0 ),
        .LOCK     (  ) 
        );

//--------Murax
Murax Murax_0(
        // Inputs
        .io_asyncReset        ( LED2_GREEN_net_0 ),
        .io_mainClk           ( MainClockCCC_0_GL0 ),
        .io_jtag_tms          ( JTAG_0_TGT_TMS_0 ),
        .io_jtag_tdi          ( JTAG_0_TGT_TDI_0 ),
        .io_jtag_tck          ( JTAG_0_TGT_TCK_0 ),
        .io_gpioA_read        ( io_gpioA_read_const_net_0 ),
        .io_uart_rxd          ( io_uart_rxd ),
        // Outputs
        .io_jtag_tdo          ( Murax_0_io_jtag_tdo ),
        .io_gpioA_write       (  ),
        .io_gpioA_writeEnable (  ),
        .io_uart_txd          ( io_uart_txd_net_0 ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_0(
        // Inputs
        .DEVRST_N         ( DEVRST_N_0 ),
        // Outputs
        .POWER_ON_RESET_N ( LED2_GREEN_net_0 ) 
        );


endmodule
