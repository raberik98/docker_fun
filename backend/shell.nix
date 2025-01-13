{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.zlib
  ];

  shellHook = ''
    export LD_LIBRARY_PATH=${pkgs.zlib.out}/lib:$LD_LIBRARY_PATH
    echo "Nix shell with Python, psycopg2, and zlib loaded"
  '';
}
