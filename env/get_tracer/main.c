#include <p101_env/env.h>
#include <p101_error/error.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    struct p101_error *error;
    struct p101_env   *env;
    p101_env_tracer    tracer;

    error  = p101_error_create(false);
    env    = p101_env_create(error, NULL);
    tracer = p101_env_get_tracer(env);

    printf("p101_env_get_tracer() = %s\n", tracer == NULL ? "NULL" : "non-NULL");

    p101_env_destroy(env);
    p101_error_destroy(error);

    return EXIT_SUCCESS;
}
