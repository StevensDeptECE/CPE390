for (j = 0 to h)
	for (i = 0 to w)
		focus += pixelof(i+1,j)-pixelof(i,j);
		focus += pixelof(i,j+1)-pixelof(i,j);
