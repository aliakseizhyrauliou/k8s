{{/*Booking app deployment name.*/}} 
{{- define "booking.deploy.name"}}
{{- default .Chart.Name | trimAll "-"}}
{{- end }}

{{/*Booking app deployment name.*/}} 
{{- define "booking.persistenceVolume.name"}}
{{- default .Chart.Name }}
{{- end }}