Sushy is a Redfish BMC emulator for KVM hypervisors.

To install on a RHEL8/CentOS8 KVM hypervisor:

dnf install -y git podman curl

git clone https://github.com/MattSecaur/pod-sushy.git

cd pod-sushy

./build.sh

./run.sh

curl localhost:8000/redfish/v1/Systems

curl localhost:8000/redfish/v1/Systems/UUID

curl -d '{"ResetType":"ACTION"}' -H "Content-Type: application/json" -X POST localhost:8000/redfish/v1/Systems/UUID/Actions/ComputerSystem.Reset

Where ACTION is:

	On
	ForceOff
	GracefulShutdown
	GracefulRestart
	ForceRestart
	Nmi
	ForceOn


podman ps -q --filter name=pod-sushy
