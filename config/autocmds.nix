{...}: {
  config.autoCmd = [
    { # Balance splits when our teminal resizes
      command = "wincmd =";
      event = [ "VimResized" ];
    }
  ];
}
