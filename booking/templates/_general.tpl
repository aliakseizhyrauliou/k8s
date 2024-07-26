{{- define "postgres.envs" }}
- name: DB_USER
  valueFrom:
    secretKeyRef:
      name: postgres-secrets
      key: POSTGRES_USER
- name: DB_PASSWORD
  valueFrom:
    secretKeyRef:
      name: postgres-secrets
      key: POSTGRES_PASSWORD
- name: DB_NAME
  value: postgres
{{- end }}


{{- define "path-ingress-booking" }}
path: "/"
backend:
  service:
    name: {{ .Values.bookingAppService.name }}
    port: 
      number: {{ .Values.bookingAppService.port }}
{{- end }}