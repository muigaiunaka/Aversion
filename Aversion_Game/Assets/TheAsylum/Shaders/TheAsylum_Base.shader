// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:541,x:32719,y:32712,varname:node_541,prsc:2|diff-6476-OUT,spec-2960-OUT,gloss-9856-OUT,normal-8917-OUT,emission-5571-OUT;n:type:ShaderForge.SFN_Tex2d,id:8315,x:31284,y:32170,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8315,prsc:2,tex:9f5a7919898a3af4d8856e76443a7b0b,ntxv:0,isnm:False|UVIN-3357-OUT;n:type:ShaderForge.SFN_Tex2d,id:1116,x:31625,y:33173,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:_MainTex_copy,prsc:2,tex:7b21e4a00b08284449f734e9b188426c,ntxv:3,isnm:True|UVIN-1287-OUT;n:type:ShaderForge.SFN_Tex2d,id:5634,x:31797,y:33755,ptovrint:False,ptlb:Illum,ptin:_Illum,varname:_BumbMap_copy,prsc:2,tex:9f5a7919898a3af4d8856e76443a7b0b,ntxv:0,isnm:False|UVIN-7293-OUT;n:type:ShaderForge.SFN_Desaturate,id:7758,x:30642,y:32757,varname:node_7758,prsc:2|COL-1060-RGB;n:type:ShaderForge.SFN_TexCoord,id:2967,x:30865,y:32083,varname:node_2967,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3357,x:31058,y:32148,varname:node_3357,prsc:2|A-2967-UVOUT,B-1397-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1397,x:30865,y:32287,ptovrint:False,ptlb:MainTex_Tile,ptin:_MainTex_Tile,varname:node_1397,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:4436,x:31327,y:32436,varname:node_4436,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8189,x:31520,y:32501,varname:node_8189,prsc:2|A-4436-UVOUT,B-6880-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6880,x:31327,y:32640,ptovrint:False,ptlb:MainTex_Detail_Tile,ptin:_MainTex_Detail_Tile,varname:_MainTex_Tile_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:9031,x:31077,y:32813,ptovrint:False,ptlb:Spec_Texture,ptin:_Spec_Texture,varname:node_9031,prsc:2,on:True|A-5296-RGB,B-1011-OUT;n:type:ShaderForge.SFN_Slider,id:9856,x:32169,y:32945,ptovrint:False,ptlb:Shininess,ptin:_Shininess,varname:node_9856,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:2960,x:31978,y:32735,varname:node_2960,prsc:2|A-7790-OUT,B-3941-OUT;n:type:ShaderForge.SFN_Power,id:7790,x:31808,y:32735,varname:node_7790,prsc:2|VAL-7912-OUT,EXP-1223-OUT;n:type:ShaderForge.SFN_Color,id:5296,x:30814,y:32916,ptovrint:False,ptlb:SpecColor,ptin:_SpecColor,varname:node_5296,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1011,x:30866,y:32768,varname:node_1011,prsc:2|A-7758-OUT,B-5296-RGB;n:type:ShaderForge.SFN_ValueProperty,id:1223,x:31748,y:32899,ptovrint:False,ptlb:Specular_Power,ptin:_Specular_Power,varname:_Specular_Brightness_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Desaturate,id:6501,x:32274,y:32336,varname:node_6501,prsc:2|COL-554-OUT,DES-4398-OUT;n:type:ShaderForge.SFN_Blend,id:1982,x:32013,y:32310,varname:node_1982,prsc:2,blmd:1,clmp:True|SRC-5849-OUT,DST-5355-RGB;n:type:ShaderForge.SFN_Multiply,id:7738,x:32479,y:32336,varname:node_7738,prsc:2|A-6501-OUT,B-2675-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2675,x:32479,y:32496,ptovrint:False,ptlb:MainTex_Brightness,ptin:_MainTex_Brightness,varname:_MainTex_Desaturate_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3941,x:31979,y:32907,ptovrint:False,ptlb:Specular_Brightness,ptin:_Specular_Brightness,varname:node_3941,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4398,x:32264,y:32511,ptovrint:False,ptlb:MainTex_Desaturate,ptin:_MainTex_Desaturate,varname:node_4398,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1060,x:30457,y:32757,ptovrint:False,ptlb:SpecMap,ptin:_SpecMap,varname:node_1060,prsc:2,tex:9f5a7919898a3af4d8856e76443a7b0b,ntxv:0,isnm:False|UVIN-1145-OUT;n:type:ShaderForge.SFN_TexCoord,id:6152,x:31264,y:33108,varname:node_6152,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1287,x:31457,y:33173,varname:node_1287,prsc:2|A-6152-UVOUT,B-208-OUT;n:type:ShaderForge.SFN_ValueProperty,id:208,x:31264,y:33312,ptovrint:False,ptlb:BumbMap_Tile,ptin:_BumbMap_Tile,varname:_MainTex_Detail_Tile_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6722,x:31254,y:33390,varname:node_6722,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6890,x:31447,y:33455,varname:node_6890,prsc:2|A-6722-UVOUT,B-3570-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3570,x:31254,y:33594,ptovrint:False,ptlb:BumbMap_Detail_Tile,ptin:_BumbMap_Detail_Tile,varname:_BumbMap_Tile_copy,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:7620,x:31980,y:33354,varname:node_7620,prsc:2|A-3812-OUT,B-3027-OUT;n:type:ShaderForge.SFN_Vector2,id:3027,x:31625,y:33516,varname:node_3027,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Add,id:8917,x:31869,y:33173,varname:node_8917,prsc:2|A-1116-RGB,B-7620-OUT;n:type:ShaderForge.SFN_Tex2d,id:5355,x:31724,y:32485,ptovrint:False,ptlb:MainTex_Detail,ptin:_MainTex_Detail,varname:node_5355,prsc:2,tex:3d6f2e513a6a9fe47a2edc2abdce7990,ntxv:0,isnm:False|UVIN-8189-OUT;n:type:ShaderForge.SFN_TexCoord,id:9834,x:31410,y:33690,varname:node_9834,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7293,x:31603,y:33755,varname:node_7293,prsc:2|A-9834-UVOUT,B-7-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7,x:31410,y:33894,ptovrint:False,ptlb:Illum_Tile,ptin:_Illum_Tile,varname:_BumbMap_Detail_Tile_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:910,x:31995,y:33755,varname:node_910,prsc:2|A-5634-RGB,B-5269-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5269,x:31981,y:33933,ptovrint:False,ptlb:Illum_Brightness,ptin:_Illum_Brightness,varname:node_5269,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4665,x:32181,y:33755,varname:node_4665,prsc:2|A-910-OUT,B-3859-RGB;n:type:ShaderForge.SFN_Color,id:3859,x:32160,y:33933,ptovrint:False,ptlb:Illum_Color,ptin:_Illum_Color,varname:node_3859,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Sin,id:4308,x:31740,y:34269,varname:node_4308,prsc:2|IN-6998-OUT;n:type:ShaderForge.SFN_Cos,id:652,x:31736,y:34044,varname:node_652,prsc:2|IN-1640-OUT;n:type:ShaderForge.SFN_Time,id:414,x:31368,y:34269,varname:node_414,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6998,x:31555,y:34269,varname:node_6998,prsc:2|A-414-T,B-6436-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6436,x:31366,y:34431,ptovrint:False,ptlb:Blink_B,ptin:_Blink_B,varname:node_6436,prsc:2,glob:False,v1:8;n:type:ShaderForge.SFN_Clamp01,id:4868,x:31920,y:34269,varname:node_4868,prsc:2|IN-4308-OUT;n:type:ShaderForge.SFN_Time,id:3253,x:31368,y:34044,varname:node_3253,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1640,x:31555,y:34044,varname:node_1640,prsc:2|A-3253-T,B-7635-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7635,x:31366,y:34206,ptovrint:False,ptlb:Blink_A,ptin:_Blink_A,varname:_Blink_A_copy,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Clamp01,id:2645,x:31920,y:34044,varname:node_2645,prsc:2|IN-652-OUT;n:type:ShaderForge.SFN_Sin,id:3177,x:31735,y:34731,varname:node_3177,prsc:2|IN-5674-OUT;n:type:ShaderForge.SFN_Cos,id:8744,x:31730,y:34505,varname:node_8744,prsc:2|IN-4824-OUT;n:type:ShaderForge.SFN_Time,id:7609,x:31363,y:34731,varname:node_7609,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5674,x:31550,y:34731,varname:node_5674,prsc:2|A-7609-T,B-1162-OUT;n:type:ShaderForge.SFN_Clamp01,id:4626,x:31915,y:34731,varname:node_4626,prsc:2|IN-3177-OUT;n:type:ShaderForge.SFN_Add,id:5944,x:32124,y:34542,varname:node_5944,prsc:2|A-8303-OUT,B-4626-OUT;n:type:ShaderForge.SFN_Time,id:2704,x:31363,y:34505,varname:node_2704,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4824,x:31550,y:34505,varname:node_4824,prsc:2|A-2704-T,B-9297-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9297,x:31361,y:34667,ptovrint:False,ptlb:Blink_C,ptin:_Blink_C,varname:_Blink_A,prsc:2,glob:False,v1:10;n:type:ShaderForge.SFN_Clamp01,id:8303,x:31915,y:34505,varname:node_8303,prsc:2|IN-8744-OUT;n:type:ShaderForge.SFN_Add,id:2323,x:32352,y:34391,varname:node_2323,prsc:2|A-5786-OUT,B-5944-OUT;n:type:ShaderForge.SFN_Multiply,id:3353,x:32478,y:33736,varname:node_3353,prsc:2|A-4665-OUT,B-724-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5571,x:32541,y:33021,ptovrint:False,ptlb:IllumBlink,ptin:_IllumBlink,varname:node_5571,prsc:2,on:True|A-4665-OUT,B-3353-OUT;n:type:ShaderForge.SFN_Tex2d,id:2035,x:31625,y:33354,ptovrint:False,ptlb:BumpMap_Detail,ptin:_BumpMap_Detail,varname:node_2035,prsc:2,tex:7b21e4a00b08284449f734e9b188426c,ntxv:3,isnm:True|UVIN-6890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1162,x:31358,y:34910,ptovrint:False,ptlb:Blink_D,ptin:_Blink_D,varname:node_1162,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Add,id:5786,x:32140,y:34190,varname:node_5786,prsc:2|A-2645-OUT,B-4868-OUT;n:type:ShaderForge.SFN_Sin,id:1540,x:32293,y:34875,varname:node_1540,prsc:2|IN-26-OUT;n:type:ShaderForge.SFN_Time,id:5374,x:31921,y:34875,varname:node_5374,prsc:2;n:type:ShaderForge.SFN_Multiply,id:26,x:32108,y:34875,varname:node_26,prsc:2|A-5374-TDB,B-781-OUT;n:type:ShaderForge.SFN_Clamp01,id:1959,x:32473,y:34875,varname:node_1959,prsc:2|IN-1540-OUT;n:type:ShaderForge.SFN_ValueProperty,id:781,x:31916,y:35054,ptovrint:False,ptlb:OffTime,ptin:_OffTime,varname:_Blink_D_copy,prsc:2,glob:False,v1:0.3;n:type:ShaderForge.SFN_Ceil,id:9218,x:32662,y:34875,varname:node_9218,prsc:2|IN-1959-OUT;n:type:ShaderForge.SFN_Multiply,id:724,x:32770,y:34480,varname:node_724,prsc:2|A-2824-OUT,B-9218-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2824,x:32610,y:34308,ptovrint:False,ptlb:Pulse/Blink,ptin:_PulseBlink,varname:node_2824,prsc:2,on:True|A-2323-OUT,B-9215-OUT;n:type:ShaderForge.SFN_Floor,id:9215,x:32516,y:34465,varname:node_9215,prsc:2|IN-2323-OUT;n:type:ShaderForge.SFN_Color,id:1927,x:32470,y:32180,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1927,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6476,x:32644,y:32250,varname:node_6476,prsc:2|A-1927-RGB,B-7738-OUT;n:type:ShaderForge.SFN_Multiply,id:3812,x:31816,y:33354,varname:node_3812,prsc:2|A-2035-RGB,B-318-OUT;n:type:ShaderForge.SFN_ValueProperty,id:318,x:31816,y:33514,ptovrint:False,ptlb:BumbMapDetail_Power,ptin:_BumbMapDetail_Power,varname:node_318,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:554,x:32097,y:32500,varname:node_554,prsc:2|A-5849-OUT,B-1982-OUT,T-5740-OUT;n:type:ShaderForge.SFN_Slider,id:5740,x:32018,y:32645,ptovrint:False,ptlb:MainText_Detail_Amound,ptin:_MainText_Detail_Amound,varname:node_5740,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:3487,x:30064,y:32692,varname:node_3487,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1145,x:30257,y:32757,varname:node_1145,prsc:2|A-3487-UVOUT,B-8796-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8796,x:30057,y:32913,ptovrint:False,ptlb:Specular_Tile,ptin:_Specular_Tile,varname:node_8796,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:8651,x:31530,y:32881,varname:node_8651,prsc:2|IN-4373-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7912,x:31526,y:32753,ptovrint:False,ptlb:Specular_Invert,ptin:_Specular_Invert,varname:node_7912,prsc:2,on:False|A-4373-OUT,B-8651-OUT;n:type:ShaderForge.SFN_Clamp01,id:4373,x:31248,y:32811,varname:node_4373,prsc:2|IN-9031-OUT;n:type:ShaderForge.SFN_Lerp,id:5849,x:31732,y:32173,varname:node_5849,prsc:2|A-8315-RGB,B-935-OUT,T-5997-OUT;n:type:ShaderForge.SFN_Slider,id:5997,x:31539,y:32369,ptovrint:False,ptlb:MainText_Contrast,ptin:_MainText_Contrast,varname:node_5997,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:935,x:31508,y:32217,varname:node_935,prsc:2|A-8315-RGB,B-8315-RGB;proporder:8315-1397-1927-4398-2675-5997-5355-6880-5740-1060-9031-7912-8796-5296-3941-1223-9856-1116-208-2035-3570-318-5634-7-5269-3859-5571-2824-7635-6436-9297-1162-781;pass:END;sub:END;*/

Shader "Specular/TheAsylum_Base" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainTex_Tile ("MainTex_Tile", Float ) = 1
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex_Desaturate ("MainTex_Desaturate", Float ) = 0
        _MainTex_Brightness ("MainTex_Brightness", Float ) = 1
        _MainText_Contrast ("MainText_Contrast", Range(0, 1)) = 0
        _MainTex_Detail ("MainTex_Detail", 2D) = "white" {}
        _MainTex_Detail_Tile ("MainTex_Detail_Tile", Float ) = 1
        _MainText_Detail_Amound ("MainText_Detail_Amound", Range(0, 1)) = 0
        _SpecMap ("SpecMap", 2D) = "white" {}
        [MaterialToggle] _Spec_Texture ("Spec_Texture", Float ) = 0.7656471
        [MaterialToggle] _Specular_Invert ("Specular_Invert", Float ) = 0.7656471
        _Specular_Tile ("Specular_Tile", Float ) = 1
        _SpecColor ("SpecColor", Color) = (1,1,1,1)
        _Specular_Brightness ("Specular_Brightness", Float ) = 1
        _Specular_Power ("Specular_Power", Float ) = 1
        _Shininess ("Shininess", Range(0, 1)) = 0.5
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _BumbMap_Tile ("BumbMap_Tile", Float ) = 1
        _BumpMap_Detail ("BumpMap_Detail", 2D) = "bump" {}
        _BumbMap_Detail_Tile ("BumbMap_Detail_Tile", Float ) = 5
        _BumbMapDetail_Power ("BumbMapDetail_Power", Float ) = 1
        _Illum ("Illum", 2D) = "white" {}
        _Illum_Tile ("Illum_Tile", Float ) = 1
        _Illum_Brightness ("Illum_Brightness", Float ) = 0
        _Illum_Color ("Illum_Color", Color) = (1,1,1,1)
        [MaterialToggle] _IllumBlink ("IllumBlink", Float ) = 0
        [MaterialToggle] _PulseBlink ("Pulse/Blink", Float ) = 0
        _Blink_A ("Blink_A", Float ) = 2
        _Blink_B ("Blink_B", Float ) = 8
        _Blink_C ("Blink_C", Float ) = 10
        _Blink_D ("Blink_D", Float ) = 5
        _OffTime ("OffTime", Float ) = 0.3
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Illum; uniform float4 _Illum_ST;
            uniform float _MainTex_Tile;
            uniform float _MainTex_Detail_Tile;
            uniform fixed _Spec_Texture;
            uniform float _Shininess;
            uniform float _Specular_Power;
            uniform float _MainTex_Brightness;
            uniform float _Specular_Brightness;
            uniform float _MainTex_Desaturate;
            uniform sampler2D _SpecMap; uniform float4 _SpecMap_ST;
            uniform float _BumbMap_Tile;
            uniform float _BumbMap_Detail_Tile;
            uniform sampler2D _MainTex_Detail; uniform float4 _MainTex_Detail_ST;
            uniform float _Illum_Tile;
            uniform float _Illum_Brightness;
            uniform float4 _Illum_Color;
            uniform float _Blink_B;
            uniform float _Blink_A;
            uniform float _Blink_C;
            uniform fixed _IllumBlink;
            uniform sampler2D _BumpMap_Detail; uniform float4 _BumpMap_Detail_ST;
            uniform float _Blink_D;
            uniform float _OffTime;
            uniform fixed _PulseBlink;
            uniform float4 _Color;
            uniform float _BumbMapDetail_Power;
            uniform float _MainText_Detail_Amound;
            uniform float _Specular_Tile;
            uniform fixed _Specular_Invert;
            uniform float _MainText_Contrast;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1287 = (i.uv0*_BumbMap_Tile);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_1287, _BumpMap)));
                float2 node_6890 = (i.uv0*_BumbMap_Detail_Tile);
                float3 _BumpMap_Detail_var = UnpackNormal(tex2D(_BumpMap_Detail,TRANSFORM_TEX(node_6890, _BumpMap_Detail)));
                float3 normalLocal = (_BumpMap_var.rgb+((_BumpMap_Detail_var.rgb*_BumbMapDetail_Power)*float3(float2(1,1),0.0)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(lmtex);
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Shininess;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float2 node_1145 = (i.uv0*_Specular_Tile);
                float4 _SpecMap_var = tex2D(_SpecMap,TRANSFORM_TEX(node_1145, _SpecMap));
                float3 node_4373 = saturate(lerp( _SpecColor.rgb, (dot(_SpecMap_var.rgb,float3(0.3,0.59,0.11))*_SpecColor.rgb), _Spec_Texture ));
                float3 specularColor = (pow(lerp( node_4373, (1.0 - node_4373), _Specular_Invert ),_Specular_Power)*_Specular_Brightness);
                #if !defined(LIGHTMAP_OFF) && defined(DIRLIGHTMAP_OFF)
                    float3 directSpecular = float3(0,0,0);
                #else
                    float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                #endif
                float3 specular = directSpecular * specularColor;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= (floor(attenuation) * _LightColor0.xyz);
                    #endif
                #else
                    specular *= (floor(attenuation) * _LightColor0.xyz);
                #endif
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                #ifndef LIGHTMAP_OFF
                    float3 directDiffuse = float3(0,0,0);
                #else
                    float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef SHADOWS_SCREEN
                        #if (defined(SHADER_API_GLES) || defined(SHADER_API_GLES3)) && defined(SHADER_API_MOBILE)
                            directDiffuse += min(lightmap.rgb, attenuation);
                        #else
                            directDiffuse += max(min(lightmap.rgb,attenuation*lmtex.rgb), lightmap.rgb*attenuation*0.5);
                        #endif
                    #else
                        directDiffuse += lightmap.rgb;
                    #endif
                #endif
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_3357 = (i.uv0*_MainTex_Tile);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3357, _MainTex));
                float3 node_5849 = lerp(_MainTex_var.rgb,(_MainTex_var.rgb*_MainTex_var.rgb),_MainText_Contrast);
                float2 node_8189 = (i.uv0*_MainTex_Detail_Tile);
                float4 _MainTex_Detail_var = tex2D(_MainTex_Detail,TRANSFORM_TEX(node_8189, _MainTex_Detail));
                float3 diffuse = (directDiffuse + indirectDiffuse) * (_Color.rgb*(lerp(lerp(node_5849,saturate((node_5849*_MainTex_Detail_var.rgb)),_MainText_Detail_Amound),dot(lerp(node_5849,saturate((node_5849*_MainTex_Detail_var.rgb)),_MainText_Detail_Amound),float3(0.3,0.59,0.11)),_MainTex_Desaturate)*_MainTex_Brightness));
////// Emissive:
                float2 node_7293 = (i.uv0*_Illum_Tile);
                float4 _Illum_var = tex2D(_Illum,TRANSFORM_TEX(node_7293, _Illum));
                float3 node_4665 = ((_Illum_var.rgb*_Illum_Brightness)*_Illum_Color.rgb);
                float4 node_3253 = _Time + _TimeEditor;
                float4 node_414 = _Time + _TimeEditor;
                float4 node_2704 = _Time + _TimeEditor;
                float4 node_7609 = _Time + _TimeEditor;
                float node_2323 = ((saturate(cos((node_3253.g*_Blink_A)))+saturate(sin((node_414.g*_Blink_B))))+(saturate(cos((node_2704.g*_Blink_C)))+saturate(sin((node_7609.g*_Blink_D)))));
                float4 node_5374 = _Time + _TimeEditor;
                float3 emissive = lerp( node_4665, (node_4665*(lerp( node_2323, floor(node_2323), _PulseBlink )*ceil(saturate(sin((node_5374.b*_OffTime)))))), _IllumBlink );
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _Illum; uniform float4 _Illum_ST;
            uniform float _MainTex_Tile;
            uniform float _MainTex_Detail_Tile;
            uniform fixed _Spec_Texture;
            uniform float _Shininess;
            uniform float _Specular_Power;
            uniform float _MainTex_Brightness;
            uniform float _Specular_Brightness;
            uniform float _MainTex_Desaturate;
            uniform sampler2D _SpecMap; uniform float4 _SpecMap_ST;
            uniform float _BumbMap_Tile;
            uniform float _BumbMap_Detail_Tile;
            uniform sampler2D _MainTex_Detail; uniform float4 _MainTex_Detail_ST;
            uniform float _Illum_Tile;
            uniform float _Illum_Brightness;
            uniform float4 _Illum_Color;
            uniform float _Blink_B;
            uniform float _Blink_A;
            uniform float _Blink_C;
            uniform fixed _IllumBlink;
            uniform sampler2D _BumpMap_Detail; uniform float4 _BumpMap_Detail_ST;
            uniform float _Blink_D;
            uniform float _OffTime;
            uniform fixed _PulseBlink;
            uniform float4 _Color;
            uniform float _BumbMapDetail_Power;
            uniform float _MainText_Detail_Amound;
            uniform float _Specular_Tile;
            uniform fixed _Specular_Invert;
            uniform float _MainText_Contrast;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1287 = (i.uv0*_BumbMap_Tile);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_1287, _BumpMap)));
                float2 node_6890 = (i.uv0*_BumbMap_Detail_Tile);
                float3 _BumpMap_Detail_var = UnpackNormal(tex2D(_BumpMap_Detail,TRANSFORM_TEX(node_6890, _BumpMap_Detail)));
                float3 normalLocal = (_BumpMap_var.rgb+((_BumpMap_Detail_var.rgb*_BumbMapDetail_Power)*float3(float2(1,1),0.0)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Shininess;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float2 node_1145 = (i.uv0*_Specular_Tile);
                float4 _SpecMap_var = tex2D(_SpecMap,TRANSFORM_TEX(node_1145, _SpecMap));
                float3 node_4373 = saturate(lerp( _SpecColor.rgb, (dot(_SpecMap_var.rgb,float3(0.3,0.59,0.11))*_SpecColor.rgb), _Spec_Texture ));
                float3 specularColor = (pow(lerp( node_4373, (1.0 - node_4373), _Specular_Invert ),_Specular_Power)*_Specular_Brightness);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_3357 = (i.uv0*_MainTex_Tile);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3357, _MainTex));
                float3 node_5849 = lerp(_MainTex_var.rgb,(_MainTex_var.rgb*_MainTex_var.rgb),_MainText_Contrast);
                float2 node_8189 = (i.uv0*_MainTex_Detail_Tile);
                float4 _MainTex_Detail_var = tex2D(_MainTex_Detail,TRANSFORM_TEX(node_8189, _MainTex_Detail));
                float3 diffuse = directDiffuse * (_Color.rgb*(lerp(lerp(node_5849,saturate((node_5849*_MainTex_Detail_var.rgb)),_MainText_Detail_Amound),dot(lerp(node_5849,saturate((node_5849*_MainTex_Detail_var.rgb)),_MainText_Detail_Amound),float3(0.3,0.59,0.11)),_MainTex_Desaturate)*_MainTex_Brightness));
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
