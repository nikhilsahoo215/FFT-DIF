// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Mar 21 00:21:46 2026
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]douta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18768)
`pragma protect data_block
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
fAkYCxAP2CKf1+1Dthsk
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
