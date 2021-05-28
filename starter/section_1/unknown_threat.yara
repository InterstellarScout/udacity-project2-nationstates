rule Weird_File_Finder {
        meta:
                Author = "Dean Sheldon"
                Description = "This rule detects suspicious files."
        strings:
                $suspiciousPartialDomain = "darkl0rd"
                $suspiciousDomain = "darkl0rd.com"
                $service = "SSH" nocase
                $noTouchServices = "iptables" nocase
        condition:
                $suspiciousPartialDomain and $suspiciousDomain and $service and $$noTouchServices

}