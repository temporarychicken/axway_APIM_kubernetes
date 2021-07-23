sed -i 's/k8s-base-machine/kubernetes0001.k8s-base-machine/g' pack_k8s_base_docker_machine.json
sed -i 's/axwaydemo.net/kubernetes0001.axwaydemo.net/g' *
sed -i 's/axwaydemo.net/kubernetes0001.axwaydemo.net/g' k8s_configuration/*

