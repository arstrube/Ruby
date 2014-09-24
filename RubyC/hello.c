#include "ruby.h"

static VALUE rb_mHello;
static VALUE rb_cHelloWorld;
static VALUE rb_cMyFile;

static void file_mark(FILE *f)
{
  /* Nothing needed */
}

static void file_free(FILE *f)
{
  if (f) fclose(f);
}

static VALUE file_alloc(VALUE klass)
{
  FILE *f = NULL;
  return Data_Wrap_Struct(klass, file_mark, file_free, f);
}

static VALUE file_init(VALUE obj, VALUE path)
{
  DATA_PTR(obj) = fopen(RSTRING_PTR(path), "r");

  return Qnil;
}

void Init_hello()
{
  rb_mHello = rb_define_module("Hello");

  rb_cMyFile = rb_define_class_under(rb_mHello, "MyFile", rb_cObject);

  rb_define_alloc_func(rb_cMyFile, file_alloc);
  rb_define_method(rb_cMyFile, "initialize", file_init, 1);
}