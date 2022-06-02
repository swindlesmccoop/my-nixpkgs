with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "libxft-bgra";

  src = fetchFromGitHub {
    sha256 = "uYRdIcIGHvyohbwMU+Vx2ajTFfhN9jcBNlq0jOcg394=";
    rev = "072cd202c0f4f757b32deac531586bc0429c8401";
    owner = "uditkarode";
    repo = "libxft-bgra";
  };

  buildInputs = [
    pkg-config
    autoreconfHook
    freetype
    fontconfig
    xorg.libXrender
    xorg.utilmacros
  ];

  meta = with lib; {
    description = "A patched version of libxft that allows for colored emojis to be rendered in Suckless software";
    homepage = "https://github.com/uditkarode/libxft-bgra";
    license = licenses.unfree;
    platforms = platforms.all;
    maintainers = with maintainers; [ swindlesmccoop ];
    mainProgram = "libxft-bgra";
  };
}
