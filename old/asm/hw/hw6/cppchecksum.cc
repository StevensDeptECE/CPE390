int checksum(char s[]) {
	int sum = 0;
	for (int i = 0; s[i] != '\0'; i++)
		sum += s[i];
	return sum;
}
