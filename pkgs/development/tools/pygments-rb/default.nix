{ lib, bundlerEnv, ruby }:

bundlerEnv rec {
  name = "pygments-rb";

  inherit ruby;

  gemdir = ./.;

  meta = with lib; {
    description = "A Ruby wrapper for the Python pygments syntax highlighter.";
    homepage    = https://github.com/tmm1/pygments.rb;
    license     = with licenses; mit;
    platforms   = platforms.unix;
  };
}
