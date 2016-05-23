// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:False,mssp:True,lmpd:True,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:35511,y:32712,varname:node_1,prsc:2|spec-384-OUT,gloss-881-OUT,emission-665-OUT,alpha-923-OUT,refract-718-OUT;n:type:ShaderForge.SFN_Color,id:309,x:34761,y:32607,ptovrint:False,ptlb:SpecColor,ptin:_SpecColor,varname:node_121,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:384,x:35131,y:32572,varname:node_384,prsc:2|A-309-RGB,B-386-OUT;n:type:ShaderForge.SFN_ValueProperty,id:386,x:34975,y:32709,ptovrint:False,ptlb:Spec_Brightness,ptin:_Spec_Brightness,varname:node_6760,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:716,x:34314,y:33833,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:node_3447,prsc:2,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:718,x:34886,y:33805,varname:node_718,prsc:2|A-720-OUT,B-722-OUT;n:type:ShaderForge.SFN_ComponentMask,id:720,x:34709,y:33742,varname:node_720,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-726-RGB;n:type:ShaderForge.SFN_Multiply,id:722,x:34709,y:33887,varname:node_722,prsc:2|A-716-OUT,B-724-OUT;n:type:ShaderForge.SFN_Vector1,id:724,x:34471,y:33915,varname:node_724,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Tex2d,id:726,x:34471,y:33657,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_2383,prsc:2,ntxv:3,isnm:True|UVIN-728-OUT;n:type:ShaderForge.SFN_Multiply,id:728,x:34284,y:33657,varname:node_728,prsc:2|A-730-UVOUT,B-3754-OUT;n:type:ShaderForge.SFN_TexCoord,id:730,x:34098,y:33571,varname:node_730,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:782,x:34482,y:33231,ptovrint:False,ptlb:TransparencyLM,ptin:_TransparencyLM,varname:node_8543,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:784,x:34713,y:33306,varname:node_784,prsc:2|A-782-R,B-786-OUT;n:type:ShaderForge.SFN_ValueProperty,id:786,x:34450,y:33435,ptovrint:False,ptlb:TransparencyLM_Amound,ptin:_TransparencyLM_Amound,varname:node_2858,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Power,id:841,x:34921,y:33383,varname:node_841,prsc:2|VAL-784-OUT,EXP-843-OUT;n:type:ShaderForge.SFN_ValueProperty,id:843,x:34712,y:33511,ptovrint:False,ptlb:TransparencyLM_Power,ptin:_TransparencyLM_Power,varname:node_2042,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:881,x:34655,y:32784,ptovrint:False,ptlb:Shininess ,ptin:_Shininess,varname:node_4030,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:923,x:34995,y:33203,ptovrint:False,ptlb:FullTransparency,ptin:_FullTransparency,varname:node_5453,prsc:2,on:True|A-841-OUT,B-8292-OUT;n:type:ShaderForge.SFN_Vector1,id:924,x:34801,y:33187,varname:node_924,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3754,x:34098,y:33807,ptovrint:False,ptlb:Refraction_Tile,ptin:_Refraction_Tile,varname:node_3754,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:665,x:35162,y:32899,varname:node_665,prsc:2|A-470-RGB,B-6144-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6144,x:34978,y:33044,ptovrint:False,ptlb:Illum_Brightness,ptin:_Illum_Brightness,varname:_Spec_Brightness_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Color,id:470,x:34972,y:32883,ptovrint:False,ptlb:Illum_Color,ptin:_Illum_Color,varname:node_470,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8292,x:35119,y:33375,ptovrint:False,ptlb:FullTransparency_Amound,ptin:_FullTransparency_Amound,varname:node_8292,prsc:2,glob:False,v1:0;proporder:309-386-881-782-786-843-923-8292-726-3754-716-6144-470;pass:END;sub:END;*/

Shader "Specular/Glass_Pro" {
    Properties {
        _SpecColor ("SpecColor", Color) = (1,1,1,1)
        _Spec_Brightness ("Spec_Brightness", Float ) = 1
        _Shininess ("Shininess ", Range(0, 1)) = 1
        _TransparencyLM ("TransparencyLM", 2D) = "white" {}
        _TransparencyLM_Amound ("TransparencyLM_Amound", Float ) = 1
        _TransparencyLM_Power ("TransparencyLM_Power", Float ) = 1
        [MaterialToggle] _FullTransparency ("FullTransparency", Float ) = 0
        _FullTransparency_Amound ("FullTransparency_Amound", Float ) = 0
        _Refraction ("Refraction", 2D) = "bump" {}
        _Refraction_Tile ("Refraction_Tile", Float ) = 1
        _RefractionIntensity ("Refraction Intensity", Range(0, 1)) = 0.1
        _Illum_Brightness ("Illum_Brightness", Float ) = 0
        _Illum_Color ("Illum_Color", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform float _Spec_Brightness;
            uniform float _RefractionIntensity;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform sampler2D _TransparencyLM; uniform float4 _TransparencyLM_ST;
            uniform float _TransparencyLM_Amound;
            uniform float _TransparencyLM_Power;
            uniform float _Shininess;
            uniform fixed _FullTransparency;
            uniform float _Refraction_Tile;
            uniform float _Illum_Brightness;
            uniform float4 _Illum_Color;
            uniform float _FullTransparency_Amound;
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
                float4 screenPos : TEXCOORD5;
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD6;
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
                o.screenPos = o.pos;
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_728 = (i.uv0*_Refraction_Tile);
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_728, _Refraction)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*(_RefractionIntensity*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, float3(0,0,1)));
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
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Shininess;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (_SpecColor.rgb*_Spec_Brightness);
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
////// Emissive:
                float3 emissive = (_Illum_Color.rgb*_Illum_Brightness);
/// Final Color:
                float3 finalColor = specular + emissive;
                float4 _TransparencyLM_var = tex2D(_TransparencyLM,TRANSFORM_TEX(i.uv0, _TransparencyLM));
                return fixed4(lerp(sceneColor.rgb, finalColor,lerp( pow((_TransparencyLM_var.r*_TransparencyLM_Amound),_TransparencyLM_Power), _FullTransparency_Amound, _FullTransparency )),1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Spec_Brightness;
            uniform float _RefractionIntensity;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform sampler2D _TransparencyLM; uniform float4 _TransparencyLM_ST;
            uniform float _TransparencyLM_Amound;
            uniform float _TransparencyLM_Power;
            uniform float _Shininess;
            uniform fixed _FullTransparency;
            uniform float _Refraction_Tile;
            uniform float _Illum_Brightness;
            uniform float4 _Illum_Color;
            uniform float _FullTransparency_Amound;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_728 = (i.uv0*_Refraction_Tile);
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_728, _Refraction)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*(_RefractionIntensity*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i)*2;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Shininess;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (_SpecColor.rgb*_Spec_Brightness);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/// Final Color:
                float3 finalColor = specular;
                float4 _TransparencyLM_var = tex2D(_TransparencyLM,TRANSFORM_TEX(i.uv0, _TransparencyLM));
                return fixed4(finalColor * lerp( pow((_TransparencyLM_var.r*_TransparencyLM_Amound),_TransparencyLM_Power), _FullTransparency_Amound, _FullTransparency ),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
