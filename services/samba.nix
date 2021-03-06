
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    kdeApplications.kdenetwork-filesharing
  ];

  services.samba = {
    enable = true;
    securityType = "user";
    enableNmbd = true;
    enableWinbindd = true;
    nsswins = true;
    
    package = pkgs.samba4Full;
    extraConfig = ''
#       client max protocol = SMB3
      server min protocol = NT1
      client min protocol = NT1
      workgroup = WORKGROUP
#       server string = smbnix
#       netbios name = smbnix
      security = user 
      #use sendfile = yes
      #max protocol = smb2
      #hosts deny = 0.0.0.0/0
      #hosts allow = 192.168.0 localhost
      hosts allow = 0.0.0.0/0
      guest account = max
      map to guest = bad user
      usershare path = /usr/local/samba/lib/usershares
      usershare max shares = 10
    '';
    shares = {
      Public = {
        path = "/home/max/Public";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
      Desktop = {
        path = "/home/max/Desktop";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
      Pictures = {
        path = "/home/max/Pictures";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
      };
    };
  };
}
