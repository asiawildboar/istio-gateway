kubectl apply -f https://raw.githubusercontent.com/asiawildboar/istio-samples/main/istio-ingressgateway/gateway-base-resources.yaml
kubectl apply -f https://raw.githubusercontent.com/asiawildboar/istio-samples/main/istio-ingressgateway/k8s-resources.yaml
kubectl apply -f https://raw.githubusercontent.com/asiawildboar/istio-samples/main/istio-ingressgateway/basic-gateway-virtualservice.yaml

curl -s -I -HHost:httpbin.example.com "http://$INGRESS_HOST:$INGRESS_PORT/status/200"
