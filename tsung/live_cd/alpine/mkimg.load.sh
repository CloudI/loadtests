
profile_load() {
	profile_standard
	title="Load Testing"
	desc="Tsung + Erlang/OTP AlpineLinux LiveCD"
	hostname="load"
	kernel_cmdline="nomodeset console=tty0 console=ttyS0,19200 rootflags=\"size=262144000\""
	syslinux_serial="0 19200"
	kernel_addons=""
	apks="$apks
erlang
erlang-asn1
erlang-common-test
erlang-compiler
erlang-crypto
erlang-erl-interface
erlang-eunit
erlang-inets
erlang-os-mon
erlang-sasl
erlang-snmp
erlang-ssh
erlang-ssl
erlang-syntax-tools
erlang-tools
erlang-xmerl
openssh
perl
tsung
"
	apkovl="genapkovl-load.sh"
}

