# Gekkota RT - Screen wall - benchmark NVIDIA graphics cards

#### **SUMMARY**
- The goal of this document is to communicate the capability of Gekkota RT to support screens wall (SWF, several video 4K at a time, MS-Powerpoint, PDF) and give some test report with benchmarking done with NVIDA cards connected to a screen wall configuration (DP connector)
#### **COMPATIBILITY**
- Screen composer 3.11.12
- Gekkota_RT 3.12.31
#### **TEST CONFIGURATION**
- Platform used for screen wall:
	- PC Datapath
		- Processor: Intel Core i7-4770S 3.10 GHz,
		- DDR: 16 GB
- System:
	- MS-Windows 10 64 bits
- Only 1 graphics card of one model tested at a time:
	- only one graphics card used at a time
		- note: in case using of several graphics cards, a additional synchronization card is required to synchronize the cards each others
	- NVIDIA Pny Quadro K1200
		- CUDA Cores: 512
		- GPU Memory 4 GB GDDR5
		- Memory Interface 128-bit Memory Bandwidth 80 GB/s
		- System Interface PCI Express 2.0 x16
		- Display Connectors: 4 mini-DisplayPort (mDP)
		- DisplayPort 1.2
		- Note: Hardware decoding DXVA2 is allowed for AVC & HEVC formats.
	- NVIDIA NVS 810
		- CUDA Cores: 1024 (512 per GPU)
		- GPU Memory 4GB DDR3 (2GB per GPU)
		- Memory Interface 128-bit (64-bit per GPU)
		- Memory Bandwidth 28.8GB/s
		- System Interface PCI Express 3.0 x16
		- Display Connectors: 8 mini-DisplayPort
		- Mini-DP to DP Adapters 8 included
		- Note: Hardware decoding DXVA2 is allowed for AVC & HEVC formats.
	- NVIDIA Quadro M4000
		- CUDA Cores: 1664
		- GPU Memory 8 GB GDDR5
		- Memory Interface: 256-bit Memory Bandwidth 192 GB/s
		- System Interface: PCI Express 3.0 x16
		- Display Connectors: 4 DisplayPort 1.2 + Stereo
		- DisplayPort: 1.2
		- Note: Hardware decoding DXVA2 is allowed for AVC & HEVC formats.
##`2016-05-04` (last update)

#INFORMATION
***********************************************************************
#### **DOCUMENTATION**
| Description                                                                      | Version |                 |
| :------------------------------------------------------------------------------- | :-------| :-------------- |
| Gekkota RT - Screen wall - benchmark NVIDIA graphics cards           | 001F/EN    | [Download](https://github.com/Qeedji/archives/blob/master/downloads/application-notes/GekkotaRT-graphics-cards-benchmark-for-multi-screen-001F_en.pdf) |







