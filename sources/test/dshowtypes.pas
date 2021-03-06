{==============================================================================}
{                                                                              }
{       OpenGL Video Renderer DirectShow Types                                 }
{       Version 1.0                                                            }
{       Date : 2010-06-22                                                      }
{                                                                              }
{==============================================================================}
{                                                                              }
{       Copyright (C) 2010 Torsten Spaete                                      }
{       All Rights Reserved                                                    }
{                                                                              }
{       Uses dglOpenGL (MPL 1.1) from the OpenGL Delphi Community              }
{         http://delphigl.com                                                  }
{                                                                              }
{==============================================================================}
{ The contents of this file are used with permission, subject to               }
{ the Mozilla Public License Version 1.1 (the "License"); you may              }
{ not use this file except in compliance with the License. You may             }
{ obtain a copy of the License at                                              }
{ http://www.mozilla.org/MPL/MPL-1.1.html                                      }
{                                                                              }
{ Software distributed under the License is distributed on an                  }
{ "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or               }
{ implied. See the License for the specific language governing                 }
{ rights and limitations under the License.                                    }
{==============================================================================}
{ History :                                                                    }
{ Version 1.0    Initial Release                                               }
{==============================================================================}

unit dshowtypes;

interface

uses
  Windows;

type
  PReferenceTime = ^TReferenceTime;
  REFERENCE_TIME = LONGLONG;
  {$EXTERNALSYM REFERENCE_TIME}
  TReferenceTime = REFERENCE_TIME;

  PVideoInfoHeader = ^TVideoInfoHeader;
  tagVIDEOINFOHEADER = record
    rcSource: TRect;                   // The bit we really want to use
    rcTarget: TRect;                   // Where the video should go
    dwBitRate: DWORD;                  // Approximate bit data rate
    dwBitErrorRate: DWORD;             // Bit error rate for this stream
    AvgTimePerFrame: TReferenceTime;  // Average time per frame (100ns units)

    bmiHeader: TBitmapInfoHeader;
  end;
  {$EXTERNALSYM tagVIDEOINFOHEADER}
  VIDEOINFOHEADER = tagVIDEOINFOHEADER;
  {$EXTERNALSYM VIDEOINFOHEADER}
  TVideoInfoHeader = tagVIDEOINFOHEADER;

const
  MEDIATYPE_NULL: TGUID = (D1:$00000000;D2:$0000;D3:$0000;D4:($00,$00,$00,$00,$00,$00,$00,$00));
  MEDIASUBTYPE_NULL: TGUID = (D1:$00000000;D2:$0000;D3:$0000;D4:($00,$00,$00,$00,$00,$00,$00,$00));

// -- Use this subtype if you don't have a use for a subtype for your type
  MEDIASUBTYPE_None: TGUID = (D1:$E436EB8E;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_None}

// -- major types ---
  MEDIATYPE_Video: TGUID = (D1:$73646976;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_Video}
  MEDIATYPE_Audio: TGUID = (D1:$73647561;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_Audio}
  MEDIATYPE_Text: TGUID = (D1:$73747874;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_Text}
  MEDIATYPE_Midi: TGUID = (D1:$7364696D;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_Midi}
  MEDIATYPE_Stream: TGUID = (D1:$E436EB83;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIATYPE_Stream}
  MEDIATYPE_Interleaved: TGUID = (D1:$73766169;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_Interleaved}
  MEDIATYPE_File: TGUID = (D1:$656C6966;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_File}
  MEDIATYPE_ScriptCommand: TGUID = (D1:$73636D64;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIATYPE_ScriptCommand}
  MEDIATYPE_AUXLine21Data: TGUID = (D1:$670AEA80;D2:$3A82;D3:$11D0;D4:($B7,$9B,$00,$AA,$00,$37,$67,$A7));
  {$EXTERNALSYM MEDIATYPE_AUXLine21Data}
  MEDIATYPE_VBI : TGUID = '{F72A76E1-EB0A-11D0-ACE4-0000C0CC16BA}';
  {$EXTERNALSYM MEDIATYPE_VBI}
  MEDIATYPE_Timecode: TGUID = (D1:$0482DEE3;D2:$7817;D3:$11CF;D4:($8A,$03,$00,$AA,$00,$6E,$CB,$65));
  {$EXTERNALSYM MEDIATYPE_Timecode}
  MEDIATYPE_LMRT : TGUID = (D1:$74726c6d;D2:$0000;D3:$0010;D4:($80,$00,$00,$aa,$00,$38,$9b,$71));
  {$EXTERNALSYM MEDIATYPE_LMRT}
  MEDIATYPE_URL_STREAM: TGUID = (D1:$736c7275;D2:$0000;D3:$0010;D4:($80,$00,$00,$aa,$00,$38,$9b,$71));
  {$EXTERNALSYM MEDIATYPE_URL_STREAM}

// -- sub types ---
  MEDIASUBTYPE_CLPL: TGUID = (D1:$4C504C43;D2:$0000;D3:$0010;D4:($80,$00,$00,$aa,$00,$38,$9b,$71));
  {$EXTERNALSYM MEDIASUBTYPE_CLPL}
  MEDIASUBTYPE_YUYV: TGUID = (D1:$56595559;D2:$0000;D3:$0010;D4:($80,$00,$00,$aa,$00,$38,$9b,$71));
  {$EXTERNALSYM MEDIASUBTYPE_YUYV}
  MEDIASUBTYPE_IYUV: TGUID = (D1:$56555949;D2:$0000;D3:$0010;D4:($80,$00,$00,$aa,$00,$38,$9b,$71));
  {$EXTERNALSYM MEDIASUBTYPE_IYUV}
  MEDIASUBTYPE_YVU9: TGUID = (D1:$39555659;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_YVU9}
  MEDIASUBTYPE_Y411: TGUID = (D1:$31313459;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_Y411}
  MEDIASUBTYPE_Y41P: TGUID = (D1:$50313459;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_Y41P}
  MEDIASUBTYPE_YUY2: TGUID = (D1:$32595559;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_YUY2}
  MEDIASUBTYPE_YVYU: TGUID = (D1:$55595659;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_YVYU}
  MEDIASUBTYPE_UYVY: TGUID = (D1:$59565955;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_UYVY}
  MEDIASUBTYPE_Y211: TGUID = (D1:$31313259;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_Y211}
  MEDIASUBTYPE_CLJR: TGUID = (D1:$524A4C43;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_CLJR}
  MEDIASUBTYPE_IF09: TGUID = (D1:$39304649;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_IF09}
  MEDIASUBTYPE_CPLA: TGUID = (D1:$414C5043;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_CPLA}
  MEDIASUBTYPE_MJPG: TGUID = (D1:$47504A4D;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_MJPG}
  MEDIASUBTYPE_TVMJ: TGUID = (D1:$4A4D5654;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_TVMJ}
  MEDIASUBTYPE_WAKE: TGUID = (D1:$454B4157;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_WAKE}
  MEDIASUBTYPE_CFCC: TGUID = (D1:$43434643;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_CFCC}
  MEDIASUBTYPE_IJPG: TGUID = (D1:$47504A49;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_IJPG}
  MEDIASUBTYPE_Plum: TGUID = (D1:$6D756C50;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_Plum}
  MEDIASUBTYPE_DVCS: TGUID = (D1:$53435644;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_DVCS}
  MEDIASUBTYPE_DVSD: TGUID = (D1:$44535644;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_DVSD}
  MEDIASUBTYPE_MDVF: TGUID = (D1:$4656444D;D2:$0000;D3:$0010;D4:($80,$00,$00,$AA,$00,$38,$9B,$71));
  {$EXTERNALSYM MEDIASUBTYPE_MDVF}
  MEDIASUBTYPE_RGB1: TGUID = (D1:$E436EB78;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB1}
  MEDIASUBTYPE_RGB4: TGUID = (D1:$E436EB79;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB4}
  MEDIASUBTYPE_RGB8: TGUID = (D1:$E436EB7A;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB8}
  MEDIASUBTYPE_RGB565: TGUID = (D1:$E436EB7B;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB565}
  MEDIASUBTYPE_RGB555: TGUID = (D1:$E436EB7C;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB555}
  MEDIASUBTYPE_RGB24: TGUID = (D1:$E436EB7D;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB24}
  MEDIASUBTYPE_RGB32:  TGUID = (D1:$E436EB7E;D2:$524F;D3:$11CE;D4:($9F,$53,$00,$20,$AF,$0B,$A7,$70));
  {$EXTERNALSYM MEDIASUBTYPE_RGB32}
  MEDIASUBTYPE_ARGB1555 : TGUID = '{297C55AF-E209-4cb3-B757-C76D6B9C88A8}';
  {$EXTERNALSYM MEDIASUBTYPE_ARGB1555}
  MEDIASUBTYPE_ARGB4444 : TGUID = '{6E6415E6-5C24-425f-93CD-80102B3D1CCA}';
  {$EXTERNALSYM MEDIASUBTYPE_ARGB4444}
  MEDIASUBTYPE_ARGB32   : TGUID = (D1:$773c9ac0;D2:$3274;D3:$11d0;D4:($b7,$24,$00,$aa,$00,$6c,$1a,$1 ));
  {$EXTERNALSYM MEDIASUBTYPE_ARGB32}

  MEDIASUBTYPE_A2R10G10B10 : TGUID = '{2f8bb76d-b644-4550-acf3-d30caa65d5c5}';
  {$EXTERNALSYM MEDIASUBTYPE_A2R10G10B10}
  MEDIASUBTYPE_A2B10G10R10 : TGUID = '{576f7893-bdf6-48c4-875f-ae7b81834567}';
  {$EXTERNALSYM MEDIASUBTYPE_A2B10G10R10}

  MEDIASUBTYPE_AYUV     : TGUID = '{56555941-0000-0010-8000-00AA00389B71}'; //'AYUV' == MEDIASUBTYPE_AYUV
  {$EXTERNALSYM MEDIASUBTYPE_AYUV}
  MEDIASUBTYPE_AI44     : TGUID = '{34344941-0000-0010-8000-00AA00389B71}'; //'AI44' == MEDIASUBTYPE_AI44
  {$EXTERNALSYM MEDIASUBTYPE_AI44}
  MEDIASUBTYPE_IA44     : TGUID = '{34344149-0000-0010-8000-00AA00389B71}'; //'IA44' == MEDIASUBTYPE_IA44
  {$EXTERNALSYM MEDIASUBTYPE_IA44}

// DX-VA uncompressed surface formats

  MEDIASUBTYPE_YV12 : TGUID = '{32315659-0000-0010-8000-00AA00389B71}'; // YV12
  {$EXTERNALSYM MEDIASUBTYPE_YV12}
  MEDIASUBTYPE_NV12 : TGUID = '{3231564E-0000-0010-8000-00AA00389B71}'; // NV12
  {$EXTERNALSYM MEDIASUBTYPE_NV12}
  MEDIASUBTYPE_IMC1 : TGUID = '{31434D49-0000-0010-8000-00AA00389B71}'; // IMC1
  {$EXTERNALSYM MEDIASUBTYPE_IMC1}
  MEDIASUBTYPE_IMC2 : TGUID = '{32434d49-0000-0010-8000-00AA00389B71}'; // IMC2
  {$EXTERNALSYM MEDIASUBTYPE_IMC2}
  MEDIASUBTYPE_IMC3 : TGUID = '{33434d49-0000-0010-8000-00AA00389B71}'; // IMC3
  {$EXTERNALSYM MEDIASUBTYPE_IMC3}
  MEDIASUBTYPE_IMC4 : TGUID = '{34434d49-0000-0010-8000-00AA00389B71}'; // IMC4
  {$EXTERNALSYM MEDIASUBTYPE_IMC4}
  MEDIASUBTYPE_S340 : TGUID = '{30343353-0000-0010-8000-00AA00389B71}'; // S340
  {$EXTERNALSYM MEDIASUBTYPE_S340}
  MEDIASUBTYPE_S342 : TGUID = '{32343353-0000-0010-8000-00AA00389B71}'; // S342
  {$EXTERNALSYM MEDIASUBTYPE_S342}

implementation

end.
