struct AdditionalLightData {
	float index : TEXCOORD0;
	float3 color: COLOR0;
	float3 direction: TEXCOORD1;
	float shadowAttenuation : TEXCOORD2;
	float distanceAttenuation : TEXCOORD3;
};

//uint pixelLightCount = GetAdditionalLightsCount();
AdditionalLightData GetAdditionalLightData(int lightIndex, float3 posWS) {
	AdditionalLightData lightData = (AdditionalLightData)0;
	lightData.index = lightIndex;

    Light addLight = GetAdditionalLight(lightIndex, posWS, 1);
    lightData.color = addLight.color;
    lightData.direction = addLight.direction;
    lightData.shadowAttenuation = addLight.shadowAttenuation;
    lightData.distanceAttenuation = addLight.distanceAttenuation;

	return lightData;
}