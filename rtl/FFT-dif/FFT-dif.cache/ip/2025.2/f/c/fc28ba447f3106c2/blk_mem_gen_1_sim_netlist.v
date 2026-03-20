// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Mar 21 00:28:29 2026
// Host        : Libu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19040)
`pragma protect data_block
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
c7E=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
