Reproduction for https://github.com/vimeo/psalm/issues/8387

This is a small reproduction that doesn't need >512 files, 
but it does require you to force psalm to use multiple threads

`run.sh` will:
- composer install
- Apply the patch to psalm
- Run psalm


#### Current output
```
ERROR: UndefinedClass - src/Bar.php:9:12 - Class, interface or enum named App\Bar does not exist (see https://psalm.dev/019)
    public Foo&Bar $prop3;


ERROR: UndefinedClass - src/Foo.php:9:12 - Class, interface or enum named App\Bar does not exist (see https://psalm.dev/019)
    public Bar&Foo $prop3;


------------------------------
2 errors found
------------------------------
```
