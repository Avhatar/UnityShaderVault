// Shader created with Shader Forge Beta 0.34 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:Bumped Specular,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:True,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32515,y:32717|diff-328-OUT,normal-8604-OUT,alpha-7783-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:34221,y:32938,ntxv:0,isnm:False|TEX-7814-TEX;n:type:ShaderForge.SFN_Tex2d,id:8,x:33111,y:32760,ptlb:Normal,ptin:_Normal,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:42,x:33300,y:32693|A-44-OUT,B-7747-OUT;n:type:ShaderForge.SFN_ValueProperty,id:44,x:33571,y:32638,ptlb:Clouds power,ptin:_Cloudspower,glob:False,v1:1;n:type:ShaderForge.SFN_Dot,id:279,x:33089,y:32371,dt:0|A-325-OUT,B-342-OUT;n:type:ShaderForge.SFN_LightVector,id:325,x:33373,y:32256;n:type:ShaderForge.SFN_Multiply,id:328,x:33111,y:32595|A-279-OUT,B-42-OUT;n:type:ShaderForge.SFN_NormalVector,id:342,x:33373,y:32397,pt:False;n:type:ShaderForge.SFN_Desaturate,id:7739,x:33987,y:32772|COL-2-RGB;n:type:ShaderForge.SFN_Color,id:7746,x:33829,y:32873,ptlb:Clouds color,ptin:_Cloudscolor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7747,x:33553,y:32763|A-7739-OUT,B-7746-RGB;n:type:ShaderForge.SFN_Multiply,id:7783,x:33857,y:33114|A-7746-A,B-2-A;n:type:ShaderForge.SFN_Tex2dAsset,id:7814,x:34505,y:32987,ptlb:Diffuse,ptin:_Diffuse,glob:False;n:type:ShaderForge.SFN_Blend,id:8604,x:32883,y:32774,blmd:1,clmp:True|SRC-8611-OUT,DST-8-RGB;n:type:ShaderForge.SFN_ValueProperty,id:8611,x:33209,y:32966,ptlb:Normal multi,ptin:_Normalmulti,glob:False,v1:1;proporder:7814-8-44-7746-8611;pass:END;sub:END;*/

Shader "Helica/HelicaAtmosphere" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Cloudspower ("Clouds power", Float ) = 1
        _Cloudscolor ("Clouds color", Color) = (0.5,0.5,0.5,1)
        _Normalmulti ("Normal multi", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
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
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Cloudspower;
            uniform float4 _Cloudscolor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Normalmulti;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_8631 = i.uv0;
                float3 normalLocal = saturate((_Normalmulti*UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_8631.rg, _Normal))).rgb));
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_2 = tex2D(_Diffuse,TRANSFORM_TEX(node_8631.rg, _Diffuse));
                finalColor += diffuseLight * (dot(lightDirection,i.normalDir)*(_Cloudspower*(dot(node_2.rgb,float3(0.3,0.59,0.11))*_Cloudscolor.rgb)));
/// Final Color:
                return fixed4(finalColor,(_Cloudscolor.a*node_2.a));
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
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Cloudspower;
            uniform float4 _Cloudscolor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Normalmulti;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_8632 = i.uv0;
                float3 normalLocal = saturate((_Normalmulti*UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_8632.rg, _Normal))).rgb));
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                //float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                //i.normalDir *= nSign;
                //normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_2 = tex2D(_Diffuse,TRANSFORM_TEX(node_8632.rg, _Diffuse));
                finalColor += diffuseLight * (dot(lightDirection,i.normalDir)*(_Cloudspower*(dot(node_2.rgb,float3(0.3,0.59,0.11))*_Cloudscolor.rgb)));
/// Final Color:
                return fixed4(finalColor * (_Cloudscolor.a*node_2.a),0);
            }
            ENDCG
        }
    }
    FallBack "Bumped Specular"
    CustomEditor "ShaderForgeMaterialInspector"
}
