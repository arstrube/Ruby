#include "ruby.h"
#include <stdlib.h>
#include <stdio.h>

static VALUE rb_mLibc;
static VALUE rb_cCFile;

static VALUE fopen_r(VALUE name, VALUE permissions)
{
    FILE * f;
    Check_Type(name, T_STRING);
    Check_Type(permissions, T_STRING);
    f = fopen(RSTRING_PTR(name), RSTRING_PTR(permissions));
    if (0 == f)
        return Qnil;
    else
        return RFILE(f);
   // return (0 == f) ? Qnil : RFILE(*f);
}

void Init_libc()
{
    rb_mLibc = rb_define_module("Libc");
    rb_cCFile = rb_define_class_under(rb_mLibc, "File", rb_cObject);
    rb_define_method(rb_cCFile, "fopen", fopen_r, 1);
}

#if 0
FILE * fopen(char *, char *);
int fread(void *, size_t, size_t, FILE *);
int fwrite(void *, size_t, size_t, FILE *);
int fclose(FILE *);

void *malloc(size_t);
void free(void *);
#endif