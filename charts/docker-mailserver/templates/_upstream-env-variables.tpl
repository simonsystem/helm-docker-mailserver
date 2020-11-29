{{/*
There are a _lot_ of upstream env variables used to customize docker-mailserver.
We list them here (and include this template in deployment.yaml) to keep deployment.yaml neater
*/}}
{{- define "dockermailserver.upstream-env-variables" -}}
{{- range $key, $val := .Values.pod.dockermailserver }}
- name: {{ $key | upper | quote }}
  value: {{ $val | quote }}
{{- end }}
{{- end -}}