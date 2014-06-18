#!/bin/bash
#
# Slims down Debian x86_64
#
sudo apt-get -y --purge remove acpi acpid aptitude at aspell aspell-en avahi-daemon base-config bc bin86 bind9-host ca-certificates console-common console-data console-tools cupsys-client cupsys-bsd cupsys-driver-gutenprint cupsys-pdf dc debian-faq debian-faq-de debian-faq-fr debian-faq-it debian-faq-zh-cn dhcp DHCP Client dhcp3-client DHCP Client dhcp3-common DHCP Client dictionaries dnsutils doc-debian doc-linux-text eject fdutils finger foomatic-filters gcc-3.3 gettext-base groff gnupg hplip iamerican ibritish info ispell laptop-detect libavahi-compat-libdnssd1 libc6-i686 libgpmg1 manpages mtools mtr-tiny mutt netcat net-tools ncurses-term pppconfig read-edid reportbug smclient tasksel tcsh traceroute vim-common  vim-tiny  wamerican w3m whois zeroinstall-injector

#
# Remove crap man files
#
sudo rm -rf /usr/share/man/??
sudo rm -rf /usr/share/man/??_*

#
# Change to IPv4 ONLY
#
sudo rm -rf /lib/xtables/libip6t_ah.so
sudo rm -rf /lib/xtables/libip6t_dst.so
sudo rm -rf /lib/xtables/libip6t_eui64.so
sudo rm -rf /lib/xtables/libip6t_frag.so
sudo rm -rf /lib/xtables/libip6t_hbh.so
sudo rm -rf /lib/xtables/libip6t_hl.so
sudo rm -rf /lib/xtables/libip6t_HL.so
sudo rm -rf /lib/xtables/libip6t_icmp6.so
sudo rm -rf /lib/xtables/libip6t_ipv6header.so
sudo rm -rf /lib/xtables/libip6t_LOG.so
sudo rm -rf /lib/xtables/libip6t_mh.so
sudo rm -rf /lib/xtables/libip6t_REJECT.so
sudo rm -rf /lib/xtables/libip6t_rt.so 
