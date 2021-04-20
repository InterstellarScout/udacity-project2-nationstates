rule CheckFileSize
{
  strings:
    $abc = "abc"
  condition:
    ($abc or not $abc) and filesize < 200KB
}