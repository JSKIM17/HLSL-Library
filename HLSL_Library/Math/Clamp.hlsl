float Clamp(float v, float m, float M){
    return clamp(v, m, M);
}

float Clamp01(float v){
    return Clamp(v, 0, 1);
}

float2 Clamp(float2 v, float m, float M){
    return clamp(v, m, M);
}

float2 Clamp01(float2 v){
    return Clamp(v, 0, 1);
}

float3 Clamp(float3 v, float m, float M){
    return clamp(v, m, M);
}

float3 Clamp01(float3 v){
    return Clamp(v, 0, 1);
}

float4 Clamp(float4 v, float m, float M){
    return clamp(v, m, M);
}

float4 Clamp01(float4 v){
    return Clamp(v, 0, 1);
}