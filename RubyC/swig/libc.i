%module libc

int fread(void *, size_t, size_t, FILE *);
int fwrite(void *, size_t, size_t, FILE *);

void *malloc(size_t);