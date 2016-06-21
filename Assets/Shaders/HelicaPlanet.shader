// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:Bumped Specular,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:0,x:34557,y:32711,varname:node_0,prsc:2|diff-7772-OUT,spec-7952-OUT,gloss-225-OUT,normal-7940-OUT,emission-8022-OUT;n:type:ShaderForge.SFN_Multiply,id:35,x:30852,y:32825,varname:node_35,prsc:2|A-37-UVOUT,B-36-OUT;n:type:ShaderForge.SFN_Vector1,id:36,x:30558,y:32786,varname:node_36,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:37,x:30736,y:32616,varname:node_37,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:47,x:32232,y:32815,ptovrint:False,ptlb:Normal map,ptin:_Normalmap,varname:node_2362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-5997-OUT;n:type:ShaderForge.SFN_Parallax,id:110,x:31539,y:32747,varname:node_110,prsc:2|UVIN-35-OUT,HEI-138-OUT,DEP-139-OUT;n:type:ShaderForge.SFN_Tex2d,id:111,x:30860,y:32341,ptovrint:False,ptlb:Height map,ptin:_Heightmap,varname:node_3237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-35-OUT;n:type:ShaderForge.SFN_ValueProperty,id:137,x:31072,y:32597,ptovrint:False,ptlb:HeightPower,ptin:_HeightPower,varname:node_3381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:138,x:31312,y:32609,varname:node_138,prsc:2|A-111-RGB,B-137-OUT;n:type:ShaderForge.SFN_ValueProperty,id:139,x:31220,y:32857,ptovrint:False,ptlb:DepPower,ptin:_DepPower,varname:node_2340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;n:type:ShaderForge.SFN_Tex2d,id:140,x:31679,y:32034,ptovrint:False,ptlb:Diffuse map,ptin:_Diffusemap,varname:node_2848,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:210,x:31771,y:32412,ptovrint:False,ptlb:Specular map,ptin:_Specularmap,varname:node_4149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Multiply,id:216,x:31973,y:32467,varname:node_216,prsc:2|A-210-RGB,B-219-OUT;n:type:ShaderForge.SFN_ValueProperty,id:219,x:31771,y:32602,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_1213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.34;n:type:ShaderForge.SFN_ValueProperty,id:225,x:33068,y:32604,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:node_4438,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.41;n:type:ShaderForge.SFN_Multiply,id:242,x:31871,y:32135,varname:node_242,prsc:2|A-140-RGB,B-250-OUT;n:type:ShaderForge.SFN_Color,id:243,x:31363,y:32075,ptovrint:False,ptlb:ColorMulti,ptin:_ColorMulti,varname:node_4618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8235294,c2:0.8235294,c3:0.8235294,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:249,x:31316,y:32296,ptovrint:False,ptlb:ColorPower,ptin:_ColorPower,varname:node_8713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:250,x:31555,y:32164,varname:node_250,prsc:2|A-243-RGB,B-249-OUT;n:type:ShaderForge.SFN_ValueProperty,id:267,x:32232,y:33022,ptovrint:False,ptlb:NormalMulti,ptin:_NormalMulti,varname:node_1617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:332,x:31089,y:33878,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_4297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2413793,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:333,x:31460,y:33857,varname:node_333,prsc:2|A-451-OUT,B-475-OUT;n:type:ShaderForge.SFN_OneMinus,id:451,x:31269,y:33688,varname:node_451,prsc:2|IN-452-OUT;n:type:ShaderForge.SFN_Dot,id:452,x:31078,y:33688,varname:node_452,prsc:2,dt:0|A-453-OUT,B-455-OUT;n:type:ShaderForge.SFN_Normalize,id:453,x:30801,y:33584,varname:node_453,prsc:2|IN-454-OUT;n:type:ShaderForge.SFN_ViewVector,id:454,x:30630,y:33584,varname:node_454,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:455,x:30721,y:33760,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:462,x:31303,y:34088,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:node_8552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3759403,max:1;n:type:ShaderForge.SFN_Multiply,id:463,x:31709,y:33772,cmnt:Rim output,varname:node_463,prsc:2|A-333-OUT,B-462-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:475,x:31269,y:33878,ptovrint:False,ptlb:Rim from light source?,ptin:_Rimfromlightsource,cmnt:Is rim color depends on color of all light sources in scene?,varname:node_8172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-332-RGB,B-477-RGB;n:type:ShaderForge.SFN_LightColor,id:477,x:31089,y:34027,varname:node_477,prsc:2;n:type:ShaderForge.SFN_Dot,id:5954,x:31509,y:33084,varname:node_5954,prsc:2,dt:0|A-5955-OUT,B-5956-OUT;n:type:ShaderForge.SFN_LightVector,id:5955,x:31314,y:32981,varname:node_5955,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5956,x:31330,y:33149,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5958,x:32057,y:33148,cmnt:Rim output,varname:node_5958,prsc:2|A-5964-OUT,B-463-OUT;n:type:ShaderForge.SFN_Clamp01,id:5964,x:31864,y:33082,cmnt:Switch of shadow side rim,varname:node_5964,prsc:2|IN-5982-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5971,x:32295,y:33211,ptovrint:False,ptlb:Rim on shadowed side?,ptin:_Rimonshadowedside,cmnt:Rim on shadowed side?,varname:node_8874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5958-OUT,B-463-OUT;n:type:ShaderForge.SFN_Add,id:5982,x:31698,y:33212,varname:node_5982,prsc:2|A-5954-OUT,B-5983-OUT;n:type:ShaderForge.SFN_Vector1,id:5983,x:31344,y:33383,cmnt:Smooth rim shadow blend value,varname:node_5983,prsc:2,v1:0.22;n:type:ShaderForge.SFN_SwitchProperty,id:5997,x:31810,y:32777,ptovrint:False,ptlb:Parallax on?,ptin:_Parallaxon,varname:node_9680,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-37-UVOUT,B-110-UVOUT;n:type:ShaderForge.SFN_Slider,id:6101,x:30733,y:31622,ptovrint:False,ptlb:Water height,ptin:_Waterheight,varname:node_2476,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2936672,max:1;n:type:ShaderForge.SFN_Multiply,id:6109,x:32072,y:31981,varname:node_6109,prsc:2|A-7189-OUT,B-242-OUT;n:type:ShaderForge.SFN_Add,id:6110,x:32402,y:31843,varname:node_6110,prsc:2|A-6111-OUT,B-6109-OUT;n:type:ShaderForge.SFN_Multiply,id:6111,x:32198,y:31647,varname:node_6111,prsc:2|A-7205-RGB,B-6112-OUT,C-7643-OUT;n:type:ShaderForge.SFN_OneMinus,id:6112,x:31870,y:31762,varname:node_6112,prsc:2|IN-7189-OUT;n:type:ShaderForge.SFN_Code,id:7189,x:31220,y:31911,varname:node_7189,prsc:2,code:cgBlAHQAdQByAG4AIABzAGEAdAB1AHIAYQB0AGUAKAAoAGgALQBwACkAKgBzACkAOwA=,output:8,fname:Saturate,width:384,height:112,input:0,input:0,input:0,input_1_label:h,input_2_label:p,input_3_label:s|A-111-R,B-6101-OUT,C-7310-OUT;n:type:ShaderForge.SFN_Color,id:7205,x:31861,y:31493,ptovrint:False,ptlb:WaterColor,ptin:_WaterColor,varname:node_8272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.01191674,c2:0,c3:0.3455882,c4:1;n:type:ShaderForge.SFN_Multiply,id:7248,x:32477,y:32390,varname:node_7248,prsc:2|A-7189-OUT,B-216-OUT;n:type:ShaderForge.SFN_OneMinus,id:7259,x:32373,y:32246,varname:node_7259,prsc:2|IN-7189-OUT;n:type:ShaderForge.SFN_Multiply,id:7263,x:32656,y:32264,varname:node_7263,prsc:2|A-7351-OUT,B-7259-OUT;n:type:ShaderForge.SFN_Add,id:7268,x:32912,y:32350,varname:node_7268,prsc:2|A-7263-OUT,B-7248-OUT;n:type:ShaderForge.SFN_Slider,id:7310,x:30825,y:31948,ptovrint:False,ptlb:Water transition border,ptin:_Watertransitionborder,varname:node_5785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:100;n:type:ShaderForge.SFN_SwitchProperty,id:7339,x:32645,y:33190,ptovrint:False,ptlb:IsRim,ptin:_IsRim,varname:node_985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7340-OUT,B-5971-OUT;n:type:ShaderForge.SFN_Vector1,id:7340,x:32456,y:33116,varname:node_7340,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:7351,x:32334,y:32058,ptovrint:False,ptlb:WaterSpecularPower,ptin:_WaterSpecularPower,varname:node_1960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4757282,max:1;n:type:ShaderForge.SFN_Multiply,id:7361,x:32672,y:32824,varname:node_7361,prsc:2|A-7189-OUT,B-7482-OUT;n:type:ShaderForge.SFN_OneMinus,id:7366,x:32480,y:32661,varname:node_7366,prsc:2|IN-7189-OUT;n:type:ShaderForge.SFN_Multiply,id:7368,x:32711,y:32689,varname:node_7368,prsc:2|A-7732-OUT,B-7366-OUT;n:type:ShaderForge.SFN_Add,id:7370,x:32951,y:32766,varname:node_7370,prsc:2|A-7368-OUT,B-7361-OUT;n:type:ShaderForge.SFN_Blend,id:7482,x:32502,y:32929,varname:node_7482,prsc:2,blmd:1,clmp:True|SRC-47-RGB,DST-267-OUT;n:type:ShaderForge.SFN_Multiply,id:7643,x:31697,y:31688,varname:node_7643,prsc:2|A-7656-OUT,B-111-RGB;n:type:ShaderForge.SFN_ValueProperty,id:7644,x:31235,y:31777,ptovrint:False,ptlb:WaterDeep,ptin:_WaterDeep,varname:node_390,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_SwitchProperty,id:7656,x:31429,y:31648,ptovrint:False,ptlb:Is WaterDeep,ptin:_IsWaterDeep,varname:node_5395,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7657-OUT,B-7644-OUT;n:type:ShaderForge.SFN_Vector1,id:7657,x:31196,y:31672,varname:node_7657,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector3,id:7732,x:32659,y:32548,varname:node_7732,prsc:2,v1:0,v2:0,v3:255;n:type:ShaderForge.SFN_Code,id:7772,x:33537,y:32322,varname:node_7772,prsc:2,code:aQBmACAAKABJAHMAVwBhAHQAZQByACAAPgA9ACAAMQApAAoAIAAgACAAcgBlAHQAdQByAG4AIABCADsACQAKAAoAZQBsAHMAZQAKACAAIAAgAHIAZQB0AHUAcgBuACAAQwA7AA==,output:2,fname:DiffuseWaterCheck,width:247,height:119,input:8,input:2,input:2,input_1_label:IsWater,input_2_label:B,input_3_label:C|A-7910-OUT,B-6110-OUT,C-242-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7910,x:34119,y:32015,ptovrint:False,ptlb:IsWater?,ptin:_IsWater,varname:node_7882,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Code,id:7940,x:33509,y:32873,varname:node_7940,prsc:2,code:aQBmACAAKABJAHMAVwBhAHQAZQByACAAPgA9ACAAMQApAAoAIAAgACAAcgBlAHQAdQByAG4AIABCADsACQAKAAoAZQBsAHMAZQAKACAAIAAgAHIAZQB0AHUAcgBuACAAQwA7AA==,output:2,fname:NormalWaterCheck,width:247,height:119,input:8,input:2,input:2,input_1_label:IsWater,input_2_label:B,input_3_label:C|A-7910-OUT,B-7370-OUT,C-7482-OUT;n:type:ShaderForge.SFN_Code,id:7952,x:33551,y:32535,varname:node_7952,prsc:2,code:aQBmACAAKABJAHMAVwBhAHQAZQByACAAPgA9ACAAMQApAAoAIAAgACAAcgBlAHQAdQByAG4AIABCADsACQAKAAoAZQBsAHMAZQAKACAAIAAgAHIAZQB0AHUAcgBuACAAQwA7AA==,output:2,fname:SpecularWaterCheck,width:247,height:119,input:8,input:2,input:2,input_1_label:IsWater,input_2_label:B,input_3_label:C|A-7910-OUT,B-7268-OUT,C-216-OUT;n:type:ShaderForge.SFN_Tex2d,id:8021,x:32494,y:33365,ptovrint:False,ptlb:CitiesLightsMap,ptin:_CitiesLightsMap,varname:node_4777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:8022,x:33983,y:33062,varname:node_8022,prsc:2|A-7339-OUT,B-8529-OUT;n:type:ShaderForge.SFN_NormalVector,id:8032,x:32038,y:33657,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:8034,x:32059,y:33473,varname:node_8034,prsc:2;n:type:ShaderForge.SFN_Dot,id:8036,x:32380,y:33592,varname:node_8036,prsc:2,dt:0|A-8079-OUT,B-8032-OUT;n:type:ShaderForge.SFN_Add,id:8040,x:32530,y:33703,varname:node_8040,prsc:2|A-8036-OUT,B-8475-OUT;n:type:ShaderForge.SFN_Clamp01,id:8042,x:32694,y:33676,cmnt:Switch of shadow side rim,varname:node_8042,prsc:2|IN-8040-OUT;n:type:ShaderForge.SFN_Multiply,id:8044,x:33211,y:33376,varname:node_8044,prsc:2|A-8065-OUT,B-8391-OUT,C-8042-OUT,D-8345-RGB;n:type:ShaderForge.SFN_ValueProperty,id:8065,x:32902,y:33256,ptovrint:False,ptlb:CitiesLightsPower,ptin:_CitiesLightsPower,varname:node_4110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8079,x:32272,y:33442,varname:node_8079,prsc:2|A-8080-OUT,B-8034-OUT;n:type:ShaderForge.SFN_Vector1,id:8080,x:32215,y:33368,varname:node_8080,prsc:2,v1:-1;n:type:ShaderForge.SFN_Noise,id:8097,x:33124,y:34002,varname:node_8097,prsc:2|XY-8100-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8100,x:32739,y:34013,varname:node_8100,prsc:2,uv:0;n:type:ShaderForge.SFN_SwitchProperty,id:8316,x:32695,y:33365,ptovrint:False,ptlb:CitiesLights?,ptin:_CitiesLights,varname:node_2229,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8317-OUT,B-8021-A;n:type:ShaderForge.SFN_Vector1,id:8317,x:32494,y:33284,varname:node_8317,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:8345,x:32999,y:33791,ptovrint:False,ptlb:CitiesLightsColor,ptin:_CitiesLightsColor,varname:node_7835,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.2,c3:0.1,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:8358,x:33467,y:33819,ptovrint:False,ptlb:CitiesLightsNoise?,ptin:_CitiesLightsNoise,varname:node_6442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8360-OUT,B-8097-OUT;n:type:ShaderForge.SFN_Vector1,id:8360,x:33241,y:33819,varname:node_8360,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:8391,x:32940,y:33345,varname:node_8391,prsc:2|A-8316-OUT,B-8358-OUT;n:type:ShaderForge.SFN_Slider,id:8475,x:32172,y:33836,ptovrint:False,ptlb:CitiesLightsShadowBorder,ptin:_CitiesLightsShadowBorder,varname:node_7518,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.03832275,max:0.2;n:type:ShaderForge.SFN_Multiply,id:8477,x:32026,y:31846,varname:node_8477,prsc:2;n:type:ShaderForge.SFN_Code,id:8529,x:33634,y:33164,varname:node_8529,prsc:2,code:aQBmACAAKABJAHMAVwBhAHQAZQByACAAPgA9ACAAMQApAAoAIAAgACAAcgBlAHQAdQByAG4AIABCADsACQAKAAoAZQBsAHMAZQAKACAAIAAgAHIAZQB0AHUAcgBuACAAQwA7AA==,output:2,fname:CitiesLightsWaterCheck,width:247,height:119,input:8,input:2,input:2,input_1_label:IsWater,input_2_label:B,input_3_label:C|A-7910-OUT,B-8869-OUT,C-8044-OUT;n:type:ShaderForge.SFN_Multiply,id:8869,x:33316,y:33203,varname:node_8869,prsc:2|A-7189-OUT,B-8044-OUT;proporder:243-249-140-267-47-5997-137-139-111-219-225-210-7339-332-462-475-5971-7910-7205-6101-7310-7351-7644-7656-8316-8021-8065-8345-8475-8358;pass:END;sub:END;*/

Shader "Helica/HelicaPlanet" {
    Properties {
        _ColorMulti ("ColorMulti", Color) = (0.8235294,0.8235294,0.8235294,1)
        _ColorPower ("ColorPower", Float ) = 1
        _Diffusemap ("Diffuse map", 2D) = "white" {}
        _NormalMulti ("NormalMulti", Float ) = 1
        _Normalmap ("Normal map", 2D) = "bump" {}
        [MaterialToggle] _Parallaxon ("Parallax on?", Float ) = 0
        _HeightPower ("HeightPower", Float ) = 1
        _DepPower ("DepPower", Float ) = 0.02
        _Heightmap ("Height map", 2D) = "black" {}
        _SpecularPower ("SpecularPower", Float ) = 0.34
        _Glossiness ("Glossiness", Float ) = 0.41
        _Specularmap ("Specular map", 2D) = "gray" {}
        [MaterialToggle] _IsRim ("IsRim", Float ) = 0
        _RimColor ("RimColor", Color) = (0.2413793,0,1,1)
        _RimPower ("RimPower", Range(0, 1)) = 0.3759403
        [MaterialToggle] _Rimfromlightsource ("Rim from light source?", Float ) = 0.2413793
        [MaterialToggle] _Rimonshadowedside ("Rim on shadowed side?", Float ) = 0.01996372
        _IsWater ("IsWater?", Float ) = 0
        _WaterColor ("WaterColor", Color) = (0.01191674,0,0.3455882,1)
        _Waterheight ("Water height", Range(0, 1)) = 0.2936672
        _Watertransitionborder ("Water transition border", Range(0, 100)) = 10
        _WaterSpecularPower ("WaterSpecularPower", Range(0, 1)) = 0.4757282
        _WaterDeep ("WaterDeep", Float ) = 5
        [MaterialToggle] _IsWaterDeep ("Is WaterDeep", Float ) = 5
        [MaterialToggle] _CitiesLights ("CitiesLights?", Float ) = 0
        _CitiesLightsMap ("CitiesLightsMap", 2D) = "white" {}
        _CitiesLightsPower ("CitiesLightsPower", Float ) = 1
        _CitiesLightsColor ("CitiesLightsColor", Color) = (0.8,0.2,0.1,1)
        _CitiesLightsShadowBorder ("CitiesLightsShadowBorder", Range(0.01, 0.2)) = 0.03832275
        [MaterialToggle] _CitiesLightsNoise ("CitiesLightsNoise?", Float ) = 0.5232363
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 128
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            uniform sampler2D _Heightmap; uniform float4 _Heightmap_ST;
            uniform float _HeightPower;
            uniform float _DepPower;
            uniform sampler2D _Diffusemap; uniform float4 _Diffusemap_ST;
            uniform sampler2D _Specularmap; uniform float4 _Specularmap_ST;
            uniform float _SpecularPower;
            uniform float _Glossiness;
            uniform float4 _ColorMulti;
            uniform float _ColorPower;
            uniform float _NormalMulti;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform fixed _Rimfromlightsource;
            uniform fixed _Rimonshadowedside;
            uniform fixed _Parallaxon;
            uniform float _Waterheight;
            fixed Saturate( float h , float p , float s ){
            return saturate((h-p)*s);
            }
            
            uniform float4 _WaterColor;
            uniform float _Watertransitionborder;
            uniform fixed _IsRim;
            uniform float _WaterSpecularPower;
            uniform float _WaterDeep;
            uniform fixed _IsWaterDeep;
            float3 DiffuseWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform float _IsWater;
            float3 NormalWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            float3 SpecularWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform sampler2D _CitiesLightsMap; uniform float4 _CitiesLightsMap_ST;
            uniform float _CitiesLightsPower;
            uniform fixed _CitiesLights;
            uniform float4 _CitiesLightsColor;
            uniform fixed _CitiesLightsNoise;
            uniform float _CitiesLightsShadowBorder;
            float3 CitiesLightsWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_35 = (i.uv0*1.0);
                float4 _Heightmap_var = tex2D(_Heightmap,TRANSFORM_TEX(node_35, _Heightmap));
                float node_7189 = Saturate( _Heightmap_var.r , _Waterheight , _Watertransitionborder );
                float2 _Parallaxon_var = lerp( i.uv0, (_DepPower*((_Heightmap_var.rgb*_HeightPower) - 0.5)*mul(tangentTransform, viewDirection).xy + node_35).rg, _Parallaxon );
                float3 _Normalmap_var = UnpackNormal(tex2D(_Normalmap,TRANSFORM_TEX(_Parallaxon_var, _Normalmap)));
                float3 node_7482 = saturate((_Normalmap_var.rgb*_NormalMulti));
                float3 normalLocal = NormalWaterCheck( _IsWater , ((float3(0,0,255)*(1.0 - node_7189))+(node_7189*node_7482)) , node_7482 );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Specularmap_var = tex2D(_Specularmap,TRANSFORM_TEX(i.uv0, _Specularmap));
                float3 node_216 = (_Specularmap_var.rgb*_SpecularPower);
                float3 specularColor = SpecularWaterCheck( _IsWater , ((_WaterSpecularPower*(1.0 - node_7189))+(node_7189*node_216)) , node_216 );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _Diffusemap_var = tex2D(_Diffusemap,TRANSFORM_TEX(i.uv0, _Diffusemap));
                float3 node_242 = (_Diffusemap_var.rgb*(_ColorMulti.rgb*_ColorPower));
                float3 diffuseColor = DiffuseWaterCheck( _IsWater , ((_WaterColor.rgb*(1.0 - node_7189)*(lerp( 1.0, _WaterDeep, _IsWaterDeep )*_Heightmap_var.rgb))+(node_7189*node_242)) , node_242 );
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 node_463 = (((1.0 - dot(normalize(viewDirection),i.normalDir))*lerp( _RimColor.rgb, _LightColor0.rgb, _Rimfromlightsource ))*_RimPower); // Rim output
                float4 _CitiesLightsMap_var = tex2D(_CitiesLightsMap,TRANSFORM_TEX(i.uv0, _CitiesLightsMap));
                float2 node_8097_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8097_rnd = 4.789*sin(489.123*(node_8097_skew));
                float node_8097 = frac(node_8097_rnd.x*node_8097_rnd.y*(1+node_8097_skew.x));
                float3 node_8044 = (_CitiesLightsPower*(lerp( 0.0, _CitiesLightsMap_var.a, _CitiesLights )*lerp( 1.0, node_8097, _CitiesLightsNoise ))*saturate((dot(((-1.0)*lightDirection),i.normalDir)+_CitiesLightsShadowBorder))*_CitiesLightsColor.rgb);
                float3 emissive = (lerp( 0.0, lerp( (saturate((dot(lightDirection,i.normalDir)+0.22))*node_463), node_463, _Rimonshadowedside ), _IsRim )+CitiesLightsWaterCheck( _IsWater , (node_7189*node_8044) , node_8044 ));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            uniform sampler2D _Heightmap; uniform float4 _Heightmap_ST;
            uniform float _HeightPower;
            uniform float _DepPower;
            uniform sampler2D _Diffusemap; uniform float4 _Diffusemap_ST;
            uniform sampler2D _Specularmap; uniform float4 _Specularmap_ST;
            uniform float _SpecularPower;
            uniform float _Glossiness;
            uniform float4 _ColorMulti;
            uniform float _ColorPower;
            uniform float _NormalMulti;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform fixed _Rimfromlightsource;
            uniform fixed _Rimonshadowedside;
            uniform fixed _Parallaxon;
            uniform float _Waterheight;
            fixed Saturate( float h , float p , float s ){
            return saturate((h-p)*s);
            }
            
            uniform float4 _WaterColor;
            uniform float _Watertransitionborder;
            uniform fixed _IsRim;
            uniform float _WaterSpecularPower;
            uniform float _WaterDeep;
            uniform fixed _IsWaterDeep;
            float3 DiffuseWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform float _IsWater;
            float3 NormalWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            float3 SpecularWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform sampler2D _CitiesLightsMap; uniform float4 _CitiesLightsMap_ST;
            uniform float _CitiesLightsPower;
            uniform fixed _CitiesLights;
            uniform float4 _CitiesLightsColor;
            uniform fixed _CitiesLightsNoise;
            uniform float _CitiesLightsShadowBorder;
            float3 CitiesLightsWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_35 = (i.uv0*1.0);
                float4 _Heightmap_var = tex2D(_Heightmap,TRANSFORM_TEX(node_35, _Heightmap));
                float node_7189 = Saturate( _Heightmap_var.r , _Waterheight , _Watertransitionborder );
                float2 _Parallaxon_var = lerp( i.uv0, (_DepPower*((_Heightmap_var.rgb*_HeightPower) - 0.5)*mul(tangentTransform, viewDirection).xy + node_35).rg, _Parallaxon );
                float3 _Normalmap_var = UnpackNormal(tex2D(_Normalmap,TRANSFORM_TEX(_Parallaxon_var, _Normalmap)));
                float3 node_7482 = saturate((_Normalmap_var.rgb*_NormalMulti));
                float3 normalLocal = NormalWaterCheck( _IsWater , ((float3(0,0,255)*(1.0 - node_7189))+(node_7189*node_7482)) , node_7482 );
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Specularmap_var = tex2D(_Specularmap,TRANSFORM_TEX(i.uv0, _Specularmap));
                float3 node_216 = (_Specularmap_var.rgb*_SpecularPower);
                float3 specularColor = SpecularWaterCheck( _IsWater , ((_WaterSpecularPower*(1.0 - node_7189))+(node_7189*node_216)) , node_216 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diffusemap_var = tex2D(_Diffusemap,TRANSFORM_TEX(i.uv0, _Diffusemap));
                float3 node_242 = (_Diffusemap_var.rgb*(_ColorMulti.rgb*_ColorPower));
                float3 diffuseColor = DiffuseWaterCheck( _IsWater , ((_WaterColor.rgb*(1.0 - node_7189)*(lerp( 1.0, _WaterDeep, _IsWaterDeep )*_Heightmap_var.rgb))+(node_7189*node_242)) , node_242 );
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _Heightmap; uniform float4 _Heightmap_ST;
            uniform sampler2D _Diffusemap; uniform float4 _Diffusemap_ST;
            uniform sampler2D _Specularmap; uniform float4 _Specularmap_ST;
            uniform float _SpecularPower;
            uniform float _Glossiness;
            uniform float4 _ColorMulti;
            uniform float _ColorPower;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform fixed _Rimfromlightsource;
            uniform fixed _Rimonshadowedside;
            uniform float _Waterheight;
            fixed Saturate( float h , float p , float s ){
            return saturate((h-p)*s);
            }
            
            uniform float4 _WaterColor;
            uniform float _Watertransitionborder;
            uniform fixed _IsRim;
            uniform float _WaterSpecularPower;
            uniform float _WaterDeep;
            uniform fixed _IsWaterDeep;
            float3 DiffuseWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform float _IsWater;
            float3 SpecularWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            uniform sampler2D _CitiesLightsMap; uniform float4 _CitiesLightsMap_ST;
            uniform float _CitiesLightsPower;
            uniform fixed _CitiesLights;
            uniform float4 _CitiesLightsColor;
            uniform fixed _CitiesLightsNoise;
            uniform float _CitiesLightsShadowBorder;
            float3 CitiesLightsWaterCheck( fixed IsWater , float3 B , float3 C ){
            if (IsWater >= 1)
               return B;	
            
            else
               return C;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 node_463 = (((1.0 - dot(normalize(viewDirection),i.normalDir))*lerp( _RimColor.rgb, _LightColor0.rgb, _Rimfromlightsource ))*_RimPower); // Rim output
                float2 node_35 = (i.uv0*1.0);
                float4 _Heightmap_var = tex2D(_Heightmap,TRANSFORM_TEX(node_35, _Heightmap));
                float node_7189 = Saturate( _Heightmap_var.r , _Waterheight , _Watertransitionborder );
                float4 _CitiesLightsMap_var = tex2D(_CitiesLightsMap,TRANSFORM_TEX(i.uv0, _CitiesLightsMap));
                float2 node_8097_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8097_rnd = 4.789*sin(489.123*(node_8097_skew));
                float node_8097 = frac(node_8097_rnd.x*node_8097_rnd.y*(1+node_8097_skew.x));
                float3 node_8044 = (_CitiesLightsPower*(lerp( 0.0, _CitiesLightsMap_var.a, _CitiesLights )*lerp( 1.0, node_8097, _CitiesLightsNoise ))*saturate((dot(((-1.0)*lightDirection),i.normalDir)+_CitiesLightsShadowBorder))*_CitiesLightsColor.rgb);
                o.Emission = (lerp( 0.0, lerp( (saturate((dot(lightDirection,i.normalDir)+0.22))*node_463), node_463, _Rimonshadowedside ), _IsRim )+CitiesLightsWaterCheck( _IsWater , (node_7189*node_8044) , node_8044 ));
                
                float4 _Diffusemap_var = tex2D(_Diffusemap,TRANSFORM_TEX(i.uv0, _Diffusemap));
                float3 node_242 = (_Diffusemap_var.rgb*(_ColorMulti.rgb*_ColorPower));
                float3 diffColor = DiffuseWaterCheck( _IsWater , ((_WaterColor.rgb*(1.0 - node_7189)*(lerp( 1.0, _WaterDeep, _IsWaterDeep )*_Heightmap_var.rgb))+(node_7189*node_242)) , node_242 );
                float4 _Specularmap_var = tex2D(_Specularmap,TRANSFORM_TEX(i.uv0, _Specularmap));
                float3 node_216 = (_Specularmap_var.rgb*_SpecularPower);
                float3 specColor = SpecularWaterCheck( _IsWater , ((_WaterSpecularPower*(1.0 - node_7189))+(node_7189*node_216)) , node_216 );
                float roughness = 1.0 - _Glossiness;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Bumped Specular"
    CustomEditor "ShaderForgeMaterialInspector"
}
