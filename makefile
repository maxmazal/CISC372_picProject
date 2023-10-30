
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
image_pthread: image_pthread.c image.h
	gcc -std=c99 image_pthread.c -o image_pthread -lm -lpthread
image_omp: image_omp.c image.h
	gcc -g image_omp.c -o image_omp -lm -fopenmp