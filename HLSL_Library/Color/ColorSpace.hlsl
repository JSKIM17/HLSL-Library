half3 GammaToLinear(half3 rgb) {
	return pow(rgb, 2.2);
}

half3 LinearToGamma(half3 rgb) {
	return pow(rgb, 0.45);
}