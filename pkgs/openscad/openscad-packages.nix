{
  lib,
  linkFarm,
  fetchFromGitHub,
}: let
  mkLib = name: src: linkFarm name {${name} = src;};
in
  lib.mapAttrs (name: src: mkLib name src) {
    BOSL2 = fetchFromGitHub {
      owner = "BelfrySCAD";
      repo = "BOSL2";
      rev = "1ef1cc1";
      hash = "sha256-aau/LJ+2Go0rNMF/R+DFpQWt406nJQpBsqUzrnUd958=";
    };
    lasercut-box-openscad = fetchFromGitHub {
      owner = "larsch";
      repo = "lasercut-box-openscad";
      rev = "0496a3a";
      hash = "sha256-L7cOuIUElCttGGPYZadp/1A986HlzMoBHKj1xk6B+vI=";
    };
    mikidep-scad = fetchFromGitHub {
      owner = "mikidep";
      repo = "mikidep-scad";
      rev = "f3c4741";
      hash = "sha256-nWQZIS/uCDhbf/kw0otrAUP60Ygq9eY0fSMVWhSQTLU=";
    };
    fastvoronoi = ./fastvoronoi;
  }
