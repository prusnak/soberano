{
  network.description = "Soberano";

  soberano =
    { config, pkgs, ... }:
    { networking.firewall.allowedTCPPorts = [ 8080 ];
      services.openssh.enable = true;
      services.tor.enable = true;
      services.tor.client.enable = true;
      services.tor.hiddenServices.soberano = {
        map = [
          { port = 22; }
          { port = 80; toPort = 8080; }
        ];
        version = 3;
      };
      system.stateVersion = "19.03";
      systemd.services.gotty = {
        description = "Run gotty";
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          ExecStart = "${pkgs.gotty}/bin/gotty -w ${pkgs.bash}/bin/bash";
        };
      };
    };
}
