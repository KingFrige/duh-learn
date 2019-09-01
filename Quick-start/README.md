Quick start
===============

[DUH help](https://github.com/sifive/duh)

* Create
    - Run `duh init` to create a base document.
```sh
$ duh init
# write --> duh_test
```

* Import
    - Run `duh-import-verilog-ports` to import an interface from Verilog RTL of the component
```sh
$ cat duh_test.v | duh-import-verilog-ports duh_test.json5
```

* Infer
    - Run duh-portinf to infer mappings of portgroups to standard bus definitions AXI, AHB, TileLink, etc.
    - Run duh-portbundler to group ports, which are unassigned to a bus mapping, into structured bundles.
```sh
duh-portinf -o duh_test_busprop.json duh_test.json5
```

* Validate
    - Run `duh validate` to test whether a given document conforms to the DUH document structure.
```sh
 duh validate duh_test_busprop.json
```


* Export
    - Run `duh-export-scala` to generate scala black box wrappers for the component.
```sh        
 mkdir src
 duh-export-scala duh_test_busprop.json -o src/
 ls src/
 ```

