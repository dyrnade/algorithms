{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "algorithms";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  license = stdenv.lib.licenses.gpl2;
}
