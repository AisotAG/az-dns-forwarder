{{/*
Expand the name of the chart.
*/}}
{{- define "az-dns-forwarder.name" -}}
{{- default .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "az-dns-forwarder.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "az-dns-forwarder.labels" -}}
helm.sh/chart: {{ include "az-dns-forwarder.chart" . }}
{{ include "az-dns-forwarder.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "az-dns-forwarder.selectorLabels" -}}
app.kubernetes.io/name: {{ include "az-dns-forwarder.name" . }}
{{- end }}
