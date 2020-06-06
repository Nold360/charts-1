{{- define "cheHost" }}
{{- if or (eq .Values.global.serverStrategy "default-host") (eq .Values.global.serverStrategy "single-host") }}
{{- printf "%s" .Values.global.ingressDomain }}
{{- else }}
{{- printf "%s.%s" .Release.Namespace .Values.global.ingressDomain }}
{{- end }}
{{- end }}
