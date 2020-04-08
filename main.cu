#ifdef CALLBACK
int callback_main(int);
#else
int no_callback_main(int);
#endif
int main(int argc, const char **argv)
{
    int device = argc > 1 ? atoi(argv[1]) : 0;
#ifdef CALLBACK
    callback_main(device);
#else
    no_callback_main(device);
#endif
    return 0;
}
