# NOTE

If clangd is unable to detect "gtk/gtk.h", run
```bash
clang -MJ hello.o.json `pkg-config --cflags gtk4` main.c -o hello `pkg-config --libs gtk4`
```
with associated files, and then

```bash
sed -e '1s/^/[\n/' -e '$s/,$/\n]/' *.o.json > compile_commands.json
```

Now clangd should detect gtk.
