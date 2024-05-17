ENDPOINT_ID="1172719310976581632"
PROJECT_ID="540600113697"
INPUT_DATA_FILE="input_data_rock_with_house.json"

curl \
-X POST \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-central1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-central1/endpoints/${ENDPOINT_ID}:predict \
-d "@${INPUT_DATA_FILE}"