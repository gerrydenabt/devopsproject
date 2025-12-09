pipeline {
    agent any

    environment {
        GRAFANA_URL = "http://162.243.215.21:3000/api/dashboards/db"
        GRAFANA_API_KEY = credentials('grafana_api_key')
    }

    stages {
        stage('Deploy Grafana Dashboard') {
            steps {
                sh '''
                    curl -X POST ${GRAFANA_URL} \
                    -H "Content-Type: application/json" \
                    -H "Authorization: Bearer ${GRAFANA_API_KEY}" \
                    --data @grafana/dashboard.json
                '''
            }
        }
    }
}
