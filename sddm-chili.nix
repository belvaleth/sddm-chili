{ stdenv, fetchFromGitHub }:
{
	sddm-chili = stdenv.mkDerivation rec {
		pname = "sddm-chili-theme";
		version = "1.0";
		dontBuild = true;
		installPhase = ''
		mkdir -p $out/share/sddm/themes
		cp -aR $src $out/share/sddm/themes/chili
		'';
	src = fetchFromGitHub {
    	owner = "belvaleth";
    	repo = "sddm-chili";
    	rev = "78fb3716352e40fde690c5ded856a259818c65af";
    	sha256 = "036fxsa7m8ymmp3p40z671z163y6fcsa9a641lrxdrw225ssq5f3";
    };
  };
}
