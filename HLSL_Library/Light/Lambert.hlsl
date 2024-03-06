
float Lambert(float3 normalWS, float3 lightDirWS){
    return dot(normalWS, lightDirWS);
}

float HalfLambert(float3 normalWS, float3 lightDirWS){
   return (Lambert(normalWS, lightDirWS) * 0.5)+0.5;
}

float HalfLambert(float lambert) {
	return (lambert * 0.5) + 0.5;
}