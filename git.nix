{
  programs.git = {
    enable = true;
    userName = "sringer";
    userEmail = "stephen.ringer@gmail.com";
    extraConfig = {
      pull = {
        rebase = true;
      };
      diff = {
        algorithm = "patience";
      };
      branch = {
        autosetuprebase = "always";
      };
      help = {
        autocorrect = 30;
      };
      core = {
        editor = "nvim";
      };
      color = {
        branch = {
          current = "yellow reverse";
          local = "yellow";
          remote = "green";
        };
        diff = {
          current = "yellow rbold";
          frag = "magenta bold";
          old = "red";
          new = "green";
        };
        status = {
          add = "yellow";
          changed = "green";
          untracked = "cyan";
        };
      };
    };
  };
}
