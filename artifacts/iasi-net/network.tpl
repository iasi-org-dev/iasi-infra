# Configures the internal IASI Hyper-V network.

$SwitchName = "{{ .network.name }}"
$Subnet     = "{{ .network.subnet }}"
$Gateway    = "{{ .network.gateway }}"

$adapter = Get-VMSwitch -Name $SwitchName -ErrorAction SilentlyContinue

if (-not $adapter) { New-VMSwitch -Name $SwitchName -SwitchType Internal }

$interface = Get-NetAdapter -Name "vEthernet ($SwitchName)" -ErrorAction Stop
$address   = Get-NetIPAddress -InterfaceIndex $interface.ifIndex -AddressFamily IPv4 -ErrorAction SilentlyContinue |
    Where-Object IPAddress -eq $Gateway

if (-not $address) {
    New-NetIPAddress -InterfaceIndex $interface.ifIndex -IPAddress $Gateway -PrefixLength 24
}

$nat = Get-NetNat -Name $SwitchName -ErrorAction SilentlyContinue

if (-not $nat) { New-NetNat -Name $SwitchName -InternalIPInterfaceAddressPrefix $Subnet }
