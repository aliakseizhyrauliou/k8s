{{/* Create env for .NET booking. */}}
{{- define "booking_envs" }}
{{- range $name, $map := .Values.bookingApp }}
{{- $value := pluck $.Values.global.env $map | first | default $map._default }}
- name: {{ $name }}
  value: {{ $value | quote }}
{{- end }}
{{- end }}
