{{/*
Prometheus service url
*/}}
{{- define "domivice-infra.prometheus.serviceUrl" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}