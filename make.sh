#!/run/current-system/sw/bin/bash

evaluate_input() {
    if [ "$user_input" == "setup-mini" ]; then
        minikube start --driver=docker --container-runtime=containerd
        echo "Minikube is running!"
    elif [ "$user_input" == "setup-py" ]; then
        py ./backend/app.py
    elif [ "$user_input" == "d-build" ]; then
        docker build -t alpine-py ./backend/
        echo "Now I will make your images available in minikube!"
        # eval $(minikube -p minikube docker-env)
        eval $(minikube docker-env)
        echo "Continue your progress in a new terminal session!"
    elif [ "$user_input" == "start" ]; then
        kubectl apply -f ./k8s/backend.yaml
        kubectl apply -f ./k8s/db.yaml
    elif [ "$user_input" == "clean" ]; then
        kubectl delete -f ./k8s/backend.yaml
        kubectl delete -f ./k8s/db.yaml
    else
        echo "Bad input!"
    fi
}

while true; do
    read -p "What should I do? ('q' for quit): " user_input

    if [ "$user_input" == "q" ]; then
        echo "Quitting the loop."
        exit 0
    fi

    evaluate_input
done


