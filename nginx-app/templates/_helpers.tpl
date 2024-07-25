{{- define "path-ingress-nginx" }}
path: "/"
backend:
  service:
    name: {{ .Values.nginxService.serviceName }}
    port: 
      number: {{ .Values.nginxService.port }}
{{- end }}