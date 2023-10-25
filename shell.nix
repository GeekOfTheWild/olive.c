{ pkgs ? import <nixpkgs> {}
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    SDL2
    SDL2.dev
    glibc_multi.dev
    lld_16
  ];
  shellHook = ''
    echo "Start developing"
  '';
}
