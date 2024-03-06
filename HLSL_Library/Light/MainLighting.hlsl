struct MainLightData {
	float3 color: COLOR0;
	float3 direction: TEXCOORD0;
	float shadowAttenuation : TEXCOORD1;
};


MainLightData GetMainLightData(float3 posWS, bool realtimeShadow = false) {
	MainLightData lightData = (MainLightData)1;
	Light mainLight = GetMainLight();
	float shadowAtten = mainLight.shadowAttenuation;

if(realtimeShadow){
	float3 shadowTestPosWS = posWS + mainLight.direction;
	float4 shadowCoord = TransformWorldToShadowCoord(shadowTestPosWS);
	shadowAtten = MainLightRealtimeShadow(shadowCoord);
}

	lightData.direction = mainLight.direction;
	lightData.color = mainLight.color;
	lightData.shadowAttenuation = shadowAtten;

	return lightData;
}
