
bool ApproximatlyEquals(float a, float b, float epsilon = 0.0001)
{
	return abs(a - b) < epsilon;
}