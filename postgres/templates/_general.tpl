{{/*Booking app deployment name.*/}} 
{{- define "booking.deploy.name"}}
{{- default .Chart.Name | trimAll "-"}}
{{- end }}


{{/*Booking app deployment name.*/}} 
{{- define "postgres.deploy.limits"}}
limits:
    memory: "128Mi"
    cpu: "500m"
{{- end }}

{{- define "postgres.envs" }}
- name: POSTGRES_USER
  valueFrom:
    secretKeyRef:
      name: postgres-secrets
      key: POSTGRES_USER
- name: POSTGRES_PASSWORD
  valueFrom:
    secretKeyRef:
      name: postgres-secrets
      key: POSTGRES_PASSWORD
- name: POSTGRES_DB
  valueFrom:
    configMapKeyRef:
      name: {{ .Values.configMap.configMapName }}
      key: POSTGRES_DB
{{- end }}