class minecraft {
 exec { "/usr/bin/wget --timestamping https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar":
 alias => "getminecraft",
 cwd => "/tmp",
  }
}
