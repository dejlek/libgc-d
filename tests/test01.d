import gc;

void main()
{
    for (auto i = 0; i < 1024; i++)
    {
        auto mem = cast(size_t*)GC_malloc(size_t.sizeof * 4);

        *(mem + 0) = 0;
        *(mem + 1) = 1;
        *(mem + 2) = 2;
        *(mem + 3) = 3;

        assert(*(mem++) == 0);
        assert(*(mem++) == 1);
        assert(*(mem++) == 2);
        assert(*(mem++) == 3);
    }
}